Hello everyone, I want to put on the shelves all the popular questions on how to turn on, etc. (the list will be updated)

\\ LIGHT
r_drawskybox "1" // Enables sky rendering (skybox)
r_draw3dskybox "1" // Enables 3D sky rendering (more detailed version)

\\ CHARM VISIBILITY IN THE STORE
lb_enable_lights "1"
lb_enable_sunlight "1"
lb_enable_baked_shadows "1"
lb_enable_dynamic_lights "1"
r_directlighting "1"

\\ OUTLINE
citadel_boss_glow_disabled "0" // Enables glow for bosses.
citadel_trooper_glow_disabled "0" // Enables glow on regular enemies ("troopers").
citadel_trooper_friendly_glow_disabled "0" // Enables glow on friendly "troopers".
citadel_enemy_glow_enabled "0" // Enables glow on enemies.
citadel_player_glow_disabled "0" // Enables glow on the player.

\\ OTHER
citadel_damage_report_enable "0" // Enables a report on the damage done.
"citadel_unit_status_use_new" "true" // To return the old HP bar, change the last word from true to false
r_farz "set it to your own value" // Sets the map's draw distance
r_aspectratio "2.25" // 1.75 = 80 fov | 2.15 = 90fov
citadel_camera_hero_fov 90
zoom_sensitivity_ratio "0.8" // Mouse sensitivity when zooming (adjust to your liking)

\\ INTERFACE 
panorama_disable_box_shadow "0" // Enables shadows for interface elements (Panorama UI).
panorama_disable_blur "0" // Enables blur in the interface (Panorama UI).
panorama_disable_parallax "0" // Enables parallax effect in the interface (Panorama UI).
panorama_disable_text_shadow "0" // Enables shadows for text in the interface (Panorama UI).
panorama_disable_animations "0" // Enables animations in the interface (Panorama UI).

\\ PARTICLES
cl_particle_max_count "1500" // The command defines the maximum number of particles that can be simultaneously rendered on the screen