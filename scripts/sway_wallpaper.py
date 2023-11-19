# Randomize sway wallpaper -- Used with scheduler for example.

import os
import random

folder_path = f"/home/{os.environ.get('USER')}/wallpapers/"
config_file_path = f"/home/{os.environ.get('USER')}/.config/sway/config"

random_file = random.choice(os.listdir(folder_path))
random_file_path = os.path.join(folder_path, random_file)

with open(config_file_path, 'r') as config_file:
    lines = [f'set $wp_var {random_file_path}\n' if line.startswith('set $wp_var') else line for line in config_file]

with open(config_file_path, 'w') as config_file:
    config_file.writelines(lines)
