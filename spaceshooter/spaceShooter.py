#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Author: tasdik
# @Contributers : Branden (Github: @bardlean86)
# @Date:   2016-01-17
# @Email:  prodicus@outlook.com  Github: @tasdikrahman
# @Last Modified by:   tasdik
# @Last Modified by:   Branden
# @Last Modified by:   Dic3
# @Last Modified time: 2016-10-16
# MIT License. You can find a copy of the License @ http://prodicus.mit-license.org

# Game music Attribution
# Frozen Jam by tgfcoder <https://twitter.com/tgfcoder> licensed under CC-BY-3 <http://creativecommons.org/licenses/by/3.0/>

# Additional assets by: Branden M. Ardelean (Github: @bardlean86)

from __future__ import division
import pygame
import random
from os import path

import jstk2

# Joystick object
joystick = jstk2.jstk2('/dev/ttyUSB1', 115200)

# assets folder
img_dir = path.join(path.dirname(__file__), 'assets')
sound_folder = path.join(path.dirname(__file__), 'sounds')

###############################
# to be placed in "constant.py" later
WIDTH = 480
HEIGHT = 600
FPS = 60
POWERUP_TIME = 5000
BAR_LENGTH = 100
BAR_HEIGHT = 10

# Define Colors
ALPHA_BLACK = (0, 0, 0, 0.45)
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
YELLOW = (255, 255, 0)
###############################

###############################
# to placed in "__init__.py" later
# initialize pygame and create window
pygame.init()
pygame.mixer.init()  # For sound
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Space Shooter")
clock = pygame.time.Clock()  # For syncing the FPS
###############################

font_name = pygame.font.match_font('arial')


def main_menu():
    global screen

    menu_song = pygame.mixer.music.load(path.join(sound_folder, "menu.ogg"))
    pygame.mixer.music.play(-1)

    title = pygame.image.load(path.join(img_dir, "main.png")).convert()
    title = pygame.transform.scale(title, (WIDTH, HEIGHT), screen)

    screen.blit(title, (0, 0))
    draw_text(
        screen, "Press [Enter] or [Trigger] to begin", 30, WIDTH//2, HEIGHT//2)
    draw_text(screen, "Press [P] or [Joystick] to pause",
              30, WIDTH//2, (HEIGHT//2)+40)
    pygame.display.update()

    while True:
        ev = pygame.event.poll()
        joystick_inputs = joystick.get_jstk()

        if (ev.type == pygame.KEYDOWN and ev.key == pygame.K_RETURN) or joystick_inputs[1]:
            return True
        elif ev.type == pygame.QUIT:
            return False


def draw_text(surf, text, size, x, y):
    # selecting a cross platform font to display the score
    font = pygame.font.Font(font_name, size)
    # True denotes the font to be anti-aliased
    text_surface = font.render(text, True, WHITE)
    text_rect = text_surface.get_rect()
    text_rect.midtop = (x, y)
    surf.blit(text_surface, text_rect)


def draw_shield_bar(surf, x, y, pct):
    # if pct < 0:
    #     pct = 0
    pct = max(pct, 0)
    # moving them to top
    # BAR_LENGTH = 100
    # BAR_HEIGHT = 10
    fill = round((pct / 100) * BAR_LENGTH)
    outline_rect = pygame.Rect(x, y, BAR_LENGTH, BAR_HEIGHT)
    fill_rect = pygame.Rect(x, y, fill, BAR_HEIGHT)
    pygame.draw.rect(surf, GREEN, fill_rect)
    pygame.draw.rect(surf, WHITE, outline_rect, 2)


def draw_lives(surf, x, y, lives, img):
    for i in range(lives):
        img_rect = img.get_rect()
        img_rect.x = x + 30 * i
        img_rect.y = y
        surf.blit(img, img_rect)


def spawnMob():
    mob_element = Mob()
    allSprites.add(mob_element)
    mobs.add(mob_element)


class Explosion(pygame.sprite.Sprite):
    def __init__(self, center, size):
        pygame.sprite.Sprite.__init__(self)
        self.size = size
        self.image = explosion_anim[self.size][0]
        self.rect = self.image.get_rect()
        self.rect.center = center
        self.frame = 0
        self.last_update = pygame.time.get_ticks()
        self.frame_rate = 75

    def update(self):
        now = pygame.time.get_ticks()
        if now - self.last_update > self.frame_rate:
            self.last_update = now
            self.frame += 1
            if self.frame == len(explosion_anim[self.size]):
                self.kill()
            else:
                center = self.rect.center
                self.image = explosion_anim[self.size][self.frame]
                self.rect = self.image.get_rect()
                self.rect.center = center


class Player(pygame.sprite.Sprite):
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        # scale the player img down
        self.image = pygame.transform.scale(player_img, (50, 38))
        self.image.set_colorkey(BLACK)
        self.rect = self.image.get_rect()
        self.radius = 20
        self.rect.centerx = WIDTH // 2
        self.rect.bottom = HEIGHT - 10
        self.speedx = 0
        self.shield = 100
        self.shoot_delay = 250
        self.last_shot = pygame.time.get_ticks()
        self.lives = 3
        self.hidden = False
        self.hide_timer = pygame.time.get_ticks()
        self.power = 1
        self.power_timer = pygame.time.get_ticks()

    def update(self):
        # time out for powerups
        if self.power >= 2 and pygame.time.get_ticks() - self.power_time > POWERUP_TIME:
            self.power -= 1
            self.power_time = pygame.time.get_ticks()

        # unhide
        if self.hidden and pygame.time.get_ticks() - self.hide_timer > 1000:
            self.hidden = False
            self.rect.centerx = WIDTH // 2
            self.rect.bottom = HEIGHT - 30

        self.speedx = 0  # makes the player static in the screen by default.
        # then we have to check whether there is an event hanlding being done for the arrow keys being
        # pressed
        self.speedy = 0
        # will give back a list of the keys which happen to be pressed down at that moment
        keystate = pygame.key.get_pressed()
        if keystate[pygame.K_LEFT]:
            self.speedx = -5
        if keystate[pygame.K_RIGHT]:
            self.speedx = 5
        if keystate[pygame.K_UP]:
            self.speedy = -5
        if keystate[pygame.K_DOWN]:
            self.speedy = 5

        # Get the joystick position and change the speed
        joystick_inputs = joystick.get_jstk()
        self.speedx += round(joystick_inputs[0][0] / 3)
        self.speedy += round(-joystick_inputs[0][1] / 3)

        # Fire weapons by holding spacebar
        if keystate[pygame.K_SPACE] or joystick_inputs[1]:
            self.shoot()

        if keystate[pygame.K_p] or joystick_inputs[2]:
            self.pause()

        # check for the borders at the left and right
        if self.rect.right > WIDTH:
            self.rect.right = WIDTH
        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.top < 0:
            self.rect.top = 0
        if self.rect.top > 560:
            self.rect.top = 560
        self.rect.x += self.speedx
        self.rect.y += self.speedy

    def pause(self):
        while True:
            ev = pygame.event.poll()
            joystick_inputs = joystick.get_jstk()
            if (ev.type == pygame.KEYDOWN and ev.key == pygame.K_c) or joystick_inputs[1]:
                break

            screen.fill(ALPHA_BLACK)
            draw_text(screen, "Paused", 30, WIDTH//2, HEIGHT//2 - 70)
            draw_text(
                screen, "Press [C] or [Trigger] to continue!", 20, WIDTH//2, HEIGHT//2 + 10)
            pygame.display.update()

    def shoot(self):
        # to tell the bullet where to spawn
        now = pygame.time.get_ticks()
        if now - self.last_shot > self.shoot_delay:
            self.last_shot = now
            if self.power == 1:
                bullet = Bullet(self.rect.centerx, self.rect.top)
                allSprites.add(bullet)
                bullets.add(bullet)
                shooting_sound.play()
            if self.power == 2:
                bullet1 = Bullet(self.rect.left, self.rect.centery)
                bullet2 = Bullet(self.rect.right, self.rect.centery)
                allSprites.add(bullet1)
                allSprites.add(bullet2)
                bullets.add(bullet1)
                bullets.add(bullet2)
                shooting_sound.play()

            """ MOAR POWAH """
            if self.power == 3:
                bullet1 = Bullet(self.rect.left, self.rect.centery)
                bullet2 = Bullet(self.rect.right, self.rect.centery)
                # Missile shoots from center of ship
                missile1 = Missile(self.rect.centerx, self.rect.top)
                allSprites.add(bullet1)
                allSprites.add(bullet2)
                allSprites.add(missile1)
                bullets.add(bullet1)
                bullets.add(bullet2)
                bullets.add(missile1)
                shooting_sound.play()
                missile_sound.play()

            if self.power == 4:
                missile1 = Missile(self.rect.left, self.rect.centery)
                missile2 = Missile(self.rect.right, self.rect.centery)
                bullet1 = Bullet(self.rect.centerx, self.rect.top)
                allSprites.add(missile1)
                allSprites.add(missile2)
                allSprites.add(bullet1)
                bullets.add(missile1)
                bullets.add(missile2)
                bullets.add(bullet1)
                shooting_sound.play()
                missile_sound.play()

            if self.power >= 5:
                missile1 = Missile(self.rect.left, self.rect.centery)
                missile2 = Missile(self.rect.right, self.rect.centery)
                missile3 = Missile(self.rect.centerx, self.rect.top)
                allSprites.add(missile1)
                allSprites.add(missile2)
                allSprites.add(missile3)
                bullets.add(missile1)
                bullets.add(missile2)
                bullets.add(missile3)
                missile_sound.play()

    def powerup(self):
        self.power += 1
        self.power_time = pygame.time.get_ticks()

    def hide(self):
        self.hidden = True
        self.hide_timer = pygame.time.get_ticks()
        self.rect.center = (WIDTH // 2, HEIGHT + 200)

# defines the enemies


class Mob(pygame.sprite.Sprite):
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        self.image_orig = random.choice(meteor_images)
        self.image_orig.set_colorkey(BLACK)
        self.image = self.image_orig.copy()
        self.rect = self.image.get_rect()
        self.radius = int(self.rect.width * .90 / 2)
        self.rect.x = random.randrange(0, WIDTH - self.rect.width)
        self.rect.y = random.randrange(-150, -100)
        # for randomizing the speed of the Mob
        self.speedy = random.randrange(5, 20)

        # randomize the movements a little more
        self.speedx = random.randrange(-3, 3)

        # adding rotation to the mob element
        self.rotation = 0
        self.rotation_speed = random.randrange(-8, 8)
        # time when the rotation has to happen
        self.last_update = pygame.time.get_ticks()

    def rotate(self):
        time_now = pygame.time.get_ticks()
        if time_now - self.last_update > 50:  # in milliseconds
            self.last_update = time_now
            self.rotation = (self.rotation + self.rotation_speed) % 360
            new_image = pygame.transform.rotate(self.image_orig, self.rotation)
            old_center = self.rect.center
            self.image = new_image
            self.rect = self.image.get_rect()
            self.rect.center = old_center

    def update(self):
        self.rotate()
        self.rect.x += self.speedx
        self.rect.y += self.speedy
        # now what if the mob element goes out of the screen

        if (self.rect.top > HEIGHT + 10) or (self.rect.left < -25) or (self.rect.right > WIDTH + 20):
            self.rect.x = random.randrange(0, WIDTH - self.rect.width)
            self.rect.y = random.randrange(-100, -40)
            # for randomizing the speed of the Mob
            self.speedy = random.randrange(1, 8)


# defines the sprite for Powerups
class PowerUp(pygame.sprite.Sprite):
    def __init__(self, center):
        pygame.sprite.Sprite.__init__(self)
        self.type = random.choice(['shield', 'gun'])
        self.image = powerup_images[self.type]
        self.image.set_colorkey(BLACK)
        self.rect = self.image.get_rect()
        # place the bullet according to the current position of the player
        self.rect.center = center
        self.speedy = 2

    def update(self):
        """should spawn right in front of the player"""
        self.rect.y += self.speedy
        # kill the sprite after it moves over the top border
        if self.rect.top > HEIGHT:
            self.kill()


# defines the sprite for bullets
class Bullet(pygame.sprite.Sprite):
    def __init__(self, x, y):
        pygame.sprite.Sprite.__init__(self)
        self.image = bullet_img
        self.image.set_colorkey(BLACK)
        self.rect = self.image.get_rect()
        # place the bullet according to the current position of the player
        self.rect.bottom = y
        self.rect.centerx = x
        self.speedy = -10

    def update(self):
        """should spawn right in front of the player"""
        self.rect.y += self.speedy
        # kill the sprite after it moves over the top border
        if self.rect.bottom < 0:
            self.kill()

        # now we need a way to shoot
        # lets bind it to "spacebar".
        # adding an event for it in Game loop

# FIRE ZE MISSILES


class Missile(pygame.sprite.Sprite):
    def __init__(self, x, y):
        pygame.sprite.Sprite.__init__(self)
        self.image = missile_img
        self.image.set_colorkey(BLACK)
        self.rect = self.image.get_rect()
        self.rect.bottom = y
        self.rect.centerx = x
        self.speedy = -10

    def update(self):
        """should spawn right in front of the player"""
        self.rect.y += self.speedy
        if self.rect.bottom < 0:
            self.kill()


###################################################
# Load all game images

background1 = pygame.image.load(path.join(img_dir, 'starfield.png')).convert()
background2 = pygame.transform.flip(background1, False, True)
backgroundRect1 = background1.get_rect()
backgroundRect2 = background2.get_rect()
backgroundRect2.top = -600

player_img = pygame.image.load(
    path.join(img_dir, 'playerShip1_orange.png')).convert()
player_mini_img = pygame.transform.scale(player_img, (25, 19))
player_mini_img.set_colorkey(BLACK)
bullet_img = pygame.image.load(path.join(img_dir, 'laserRed16.png')).convert()
missile_img = pygame.image.load(path.join(img_dir, 'missile.png')).convert_alpha()
# meteor_img = pygame.image.load(path.join(img_dir, 'meteorBrown_med1.png')).convert()
meteor_images = []
meteor_list = [
    'meteorBrown_big1.png',
    'meteorBrown_big2.png',
    'meteorBrown_med1.png',
    'meteorBrown_med3.png',
    'meteorBrown_small1.png',
    'meteorBrown_small2.png',
    'meteorBrown_tiny1.png'
]

for image in meteor_list:
    meteor_images.append(pygame.image.load(
        path.join(img_dir, image)).convert())

# meteor explosion
explosion_anim = {}
explosion_anim['lg'] = []
explosion_anim['sm'] = []
explosion_anim['player'] = []
for i in range(9):
    filename = 'regularExplosion0{}.png'.format(i)
    img = pygame.image.load(path.join(img_dir, filename)).convert()
    img.set_colorkey(BLACK)
    # resize the explosion
    img_lg = pygame.transform.scale(img, (75, 75))
    explosion_anim['lg'].append(img_lg)
    img_sm = pygame.transform.scale(img, (32, 32))
    explosion_anim['sm'].append(img_sm)

    # player explosion
    filename = 'sonicExplosion0{}.png'.format(i)
    img = pygame.image.load(path.join(img_dir, filename)).convert()
    img.set_colorkey(BLACK)
    explosion_anim['player'].append(img)

# load power ups
powerup_images = {}
powerup_images['shield'] = pygame.image.load(
    path.join(img_dir, 'shield_gold.png')).convert()
powerup_images['gun'] = pygame.image.load(
    path.join(img_dir, 'bolt_gold.png')).convert()


###################################################


###################################################
# Load all game sounds
shooting_sound = pygame.mixer.Sound(path.join(sound_folder, 'pew.wav'))
missile_sound = pygame.mixer.Sound(path.join(sound_folder, 'rocket.ogg'))
explosionSounds = []
for sound in ['expl3.wav', 'expl6.wav']:
    explosionSounds.append(pygame.mixer.Sound(path.join(sound_folder, sound)))
# main background music
# pygame.mixer.music.load(path.join(sound_folder, 'tgfcoder-FrozenJam-SeamlessLoop.ogg'))
pygame.mixer.music.set_volume(0.2)  # simmered the sound down a little

player_die_sound = pygame.mixer.Sound(path.join(sound_folder, 'rumble1.ogg'))
###################################################

#############################
# Game loop
running = True
menu_display = True
while running:
    # Handle display
    if menu_display:
        if not main_menu():
            break
        menu_display = False

        # Show "Get ready" screen with countdown
        ready = pygame.mixer.Sound(path.join(sound_folder, 'getready.ogg'))
        ready.play()
        for i in range(3, 0, -1):
            screen.fill(BLACK)
            draw_text(screen, "GET READY!", 40, WIDTH//2, HEIGHT//2-25)
            draw_text(screen, "Starting in {}s".format(i), 40, WIDTH//2, HEIGHT//2+25)
            pygame.display.update()
            pygame.time.wait(1000)

        # Stop menu music
        pygame.mixer.music.stop()

        # Play the gameplay music
        pygame.mixer.music.load(
            path.join(sound_folder, 'tgfcoder-FrozenJam-SeamlessLoop.ogg'))

        # Makes the game play sound in an endless loop
        pygame.mixer.music.play(-1)

        # Group all the sprites together for ease of update
        allSprites = pygame.sprite.Group()
        player = Player()
        allSprites.add(player)

        # Spawn a group of mob
        mobs = pygame.sprite.Group()
        for i in range(8):
            spawnMob()

        # Group for bullets
        bullets = pygame.sprite.Group()
        powerups = pygame.sprite.Group()

        # Score board variable
        score = 0

    # Process input/events
    for event in pygame.event.get():
        # Listen for the the X button at the top
        if event.type == pygame.QUIT:
            running = False

    # Update sprites
    allSprites.update()

    # Check if a bullet hit a mob
    hits = pygame.sprite.groupcollide(mobs, bullets, True, True)

    # Delete the mob element when we hit one with a bullet and spawn a new one
    for hit in hits:
        # Give different scores for hitting big and small meteors
        score += 50 - hit.radius

        # Play a random explosion sound
        random.choice(explosionSounds).play()

        # Add an explosion
        explosion = Explosion(hit.rect.center, 'lg')
        allSprites.add(explosion)

        # Randomly spawn powerups
        if random.random() > 0.9:
            pow = PowerUp(hit.rect.center)
            allSprites.add(pow)
            powerups.add(pow)

        # Spawn a new mob, the ones that collided are removed by groupcollide()
        spawnMob()

    # Check if the player collides with the mob
    hits = pygame.sprite.spritecollide(player, mobs, True, pygame.sprite.collide_circle)
    for hit in hits:
        # Decrement the player shield status
        player.shield -= hit.radius * 2

        # Add an explosion
        explosion = Explosion(hit.rect.center, 'sm')
        allSprites.add(explosion)

        # Spawn a new mob, the ones that collided are removed by spritecollide()
        spawnMob()

        # If the player shield goes blows 0 the player dies
        if player.shield <= 0:
            player_die_sound.play()

            # Add an explosion over the player
            deathExplosion = Explosion(player.rect.center, 'player')
            allSprites.add(deathExplosion)

            # Decrement the lives and reset the shield
            player.lives -= 1
            player.shield = 100

    # Check if the player hits a power up
    hits = pygame.sprite.spritecollide(player, powerups, True)
    for hit in hits:
        if hit.type == 'shield':
            player.shield += random.randrange(10, 30)
            if player.shield >= 100:
                player.shield = 100
        if hit.type == 'gun':
            player.powerup()

    # Update the LED
    joystick.setLedColor((int(255 * (1 - player.shield / 100)),  # Red
                          0,                                     # Green
                          int(255 * (player.shield / 100))))     # Blue

    # If player used up all lives and the explosion has finished, end game
    if player.lives == 0 and not deathExplosion.alive():
        menu_display = True
        pygame.display.update()

        # Show die screen
        screen.fill(BLACK)
        draw_text(screen, "YOU DIED!", 40, WIDTH//2, HEIGHT//2)
        pygame.display.update()
        pygame.time.wait(2000)

        # Reset the lives for the next game
        player.lives = 3

    # Clear the screen
    screen.fill(BLACK)

    # Add the background
    screen.blit(background1, backgroundRect1)
    screen.blit(background2, backgroundRect2)

    # Update position background
    backgroundRect1.top += 5
    if (backgroundRect1.top == 600):
        backgroundRect1.top = -600
    backgroundRect2.top += 5
    if (backgroundRect2.top == 600):
        backgroundRect2.top = -600

    # Add all sprites
    allSprites.draw(screen)
    draw_text(screen, str(score), 18, WIDTH // 2, 10)
    draw_shield_bar(screen, 5, 5, player.shield)

    # Draw lives
    draw_lives(screen, WIDTH - 100, 5, player.lives, player_mini_img)

    # Update the display
    # pygame.display.flip()
    pygame.display.update()

    # Limit FPS
    clock.tick(FPS)

joystick.setLedColor((0, 0, 0))
pygame.quit()
joystick.close()
