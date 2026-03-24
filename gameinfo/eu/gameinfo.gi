"GameInfo"
{
	game 		"citadel"
	title 		"Citadel"
	type		multiplayer_only
	nomodels 1
	nohimodel 1
	nocrosshair 0
	hidden_maps
	{
		"test_speakers"			1
		"test_hardware"			1
	}
	nodegraph 0
	perfwizard 0
	tonemapping 0 
	GameData	"citadel.fgd"
	
	Localize
	{
		DuplicateTokensAssert	1
		DisallowTokenContexts	1
	}

	SupportedLanguages
	{
		"brazilian" "3"
		"czech" "3"
		"english" "3"
		"french" "3"
		"german" "3"
		"italian" "3"
		"indonesian" "3"
		"japanese" "3"
		"koreana" "3"
		"latam" "3"
		"polish" "3"
		"russian" "3"
		"schinese" "3"
		"spanish" "3"
		"thai" "3"
		"turkish" "3"
		"ukrainian" "3"
	}
	
	FileSystem
	{	
        // Deadlock Mod Manager - Start
	SearchPaths
        {  
            Game_Language       citadel_*LANGUAGE*
            Game_LowViolence	citadel_lv
            Game                citadel/addons
            Game                citadel
            Game                core 
            Mod                 citadel
            Mod                 core
            Write               citadel          
            Write               core          
        }
        // Deadlock Mod Manager - End
	}
	MaterialSystem2
	{
		RenderModes
		{
			game Default
			game Forward
			game Deferred
			game Outline
			game Depth
			game FrontDepth

			dev ToolsVis // Visualization modes for all shaders (lighting only, normal maps only, etc.)
			dev ToolsWireframe // This should use the ToolsVis mode above instead of being its own mode\

			tools ToolsUtil // Meant to be used to render tools sceneobjects that are mod-independent, like the origin grid
		}
	}

	MaterialEditor
	{
		"DefaultShader" "environment_texture_set"
	}

	NetworkSystem
	{
		BetaUniverse
		{
			FakeLag			40
			FakeLoss		.1
			//FakeReorderPct 0.05
			//FakeReorderDelay 10
			//FakeJitter "low"
			// Turning off fake jitter for now while I work on making the CQ totally solid
			FakeReorderPct 0
			FakeReorderDelay 0
			FakeJitter "off"
		}

		"SkipRedundantChangeCallbacks"	"1"
	}

	RenderSystem
	{
		IndexBufferPoolSizeMB 32
		UseReverseDepth 1
		Use32BitDepthBuffer 0
		Use32BitDepthBufferWithoutStencil 0
		SwapChainSampleableDepth 1
		VulkanMutableSwapchain 1
		"LowLatency"								"1"
		"VulkanOnly"								"1"	[ $LINUX || $OSX ] // No OpenGL or D3D9/11 fallback on Linux or OSX, only Vulkan is supported.
		"VulkanRequireSubgroupWaveOpSupport"		"1"	[ !$OSX ]
		"VulkanRequireDescriptorIndexing"			"1"	[ !$OSX ]
		"VulkanSteamShaderCache" "1"
		"VulkanSteamAppShaderCache" "1"
		"VulkanSteamDownloadedShaderCache" "1"
		"VulkanAdditionalShaderCache" "vulkan_shader_cache.foz"
		"VulkanStagingPMBSizeLimitMB" "384"
		"GraphicsPipelineLibrary"	"1"
		"VulkanOnlyTestProbability" "0"
		"VulkanDefrag"				"1"
		"MinStreamingPoolSizeMB"	"1024"
		"MinStreamingPoolSizeMBTools" "2048"
	}

	NVNGX
	{
		AppID 103371621
		SupportsDLSS 1
	}

	Engine2
	{
		HasModAppSystems 1
		Capable64Bit 1
		URLName citadel
		RenderingPipeline
		{
			SupportsMSAA 0
			DistanceField 1
		}
		PauseSinglePlayerOnGameOverlay 1
		DefensiveConCommands 1
		DisableLoadingPlaque 1
	}

	ContentBuilder
	{
		ResourceCompilerDirectXUsesWARP "0"
	}

	SoundSystem
	{
		SteamAudioEnabled            "1"
		WaveDataCacheSizeMB          "256"
		"UsePlatTime"            "1"
	}
	Sounds
	{
		HierarchicalEncodingFiles	 "1"
	}

	ToolsEnvironment
	{
		"Engine"	"Source 2"
		"ToolsDir"	"../sdktools"	// NOTE: Default Tools path. This is relative to the mod path.
	}
	
	pulse
	{
		"pulse_enabled"					"1"
	}

	Hammer
	{
		"fgd"					"citadel.fgd"	// NOTE: This is relative to the 'game' path.
		"GameFeatureSet"		"Citadel"
		"DefaultSolidEntity"	"trigger_multiple"
		"DefaultPointEntity"	"info_player_start"
		"NavMarkupEntity"		"func_nav_markup"
		"OverlayBoxSize"			"8"
		"TileMeshesEnabled"			"1"
		"RenderMode"				"ToolsVis"
		"CreateRenderClusters"		"1"
		"DefaultMinDrawVolumeSize"	"2048"
		"DefaultMinTrianglesPerCluster"	"16384"
		"TileGridSupportsBlendHeight"	"1"
		"TileGridBlendDefaultColor"	"0 255 0"
		"LoadScriptEntities" "0"
		"UsesBakedLighting" "1"
		"UseAnalyticGrid" "0"
		"SupportsDisplacementMapping" "0"
		"SteamAudioEnabled"				"1"
		"LatticeDeformerEnabled"		"1"
		"ShadowAtlasWidth" "16384"
		"ShadowAtlasHeight" "16384"
		"TimeSlicedShadowMapRendering" "1"
	}

	SoundTool
	{
		"DefaultSoundEventType" "src1_3d"

		SoundEventBaseOptions
		{
			"Base.Announcer.VO.2d" ""
			"Base.World.VO.Emitter.3d" ""
			"Base.Hero.VO.Ping.2d" ""
			"Base.Hero.VO.2d" ""
			"Base.Hero.VO.3d" ""
			"Base.Hero.VO.Ability.3d" ""
			"Base.Hero.VO.Ultimate.3d" ""
			"Base.Hero.VO.Dash.3d" ""
			"Base.Hero.VO.Effort.3d" ""
			"Base.Hero.VO.Pain.3d" ""
			"Base.Hero.VO.Melee.3d" ""
			"Base.Hero.VO.Death.3d" ""
		}
	}

	RenderPipelineAliases
	{
	}

	ResourceCompiler
	{
		// Overrides of the default builders as specified in code, this controls which map builder steps
		// will be run when resource compiler is run for a map without specifiying any specific map builder
		// steps. Additionally this controls which builders are displayed in the hammer build dialog.
		DefaultMapBuilders
		{
			"bakedlighting"	"1"	// Enable lightmapping during compile time		
			"envmap"	"0" // turned off since it currently causes an assert and doesn't work due to some build issue
			"nav"		"1"	// Generate nav mesh data
		}

		MeshCompiler
		{
			OptimizeForMeshlets 1
			TrianglesPerMeshlet 64	// Maximum valid value currently is 126
			UseMikkTSpace 1
			EncodeVertexBuffer 1
            EncodeVertexBufferVersion 1
            EncodeVertexBufferLevel 3
			EncodeIndexBuffer 1
			SplitDepthStream 1
		}

		WorldRendererBuilder
		{
			VisibilityGuidedMeshClustering      "1"
			MinimumTrianglesPerClusteredMesh    "8192"
			MinimumVerticesPerClusteredMesh     "8192"
			MinimumVolumePerClusteredMesh       "8192"       // ~20x20x20 cube
			MaxPrecomputedVisClusterMembership  "96"
			MaxCullingBoundsGroups              "128"
			UseAggregateInstances				"1"
			AggregateInstancingMeshlets			"1"
			BakePropsWithExtraVertexStreams		"1"
		}

		BakedLighting
		{
			Version 4
			ImportanceVolumeTransitionRegion 512            // distance we transition from high to low resolution charts 
			LightmapChannels
			{
				direct_light_shadows 1
				debug_chart_color 1
				directional_irradiance_sh2_dc 1
				
				directional_irradiance_sh2_r
				{
					CompressedFormat DXT1
				}
				
				directional_irradiance_sh2_g
				{
					CompressedFormat DXT1
				}
				
				directional_irradiance_sh2_b
				{
					CompressedFormat DXT1
				}
			}
			LightmapGutterSize 2 // For bicubic filtering
			UseStaticLightProbes 0
			LPVAtlas 1
			BC6HHueShiftFixup 0 // Causes more artifacts than it solves atm
			Repack2 1
		}

		SteamAudio
		{
			ReverbDefaults
			{
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumRays				"32768"
				NumBounces			"64"
				IRDuration			"1.0"
				AmbisonicsOrder		"1"
			}
			PathingDefaults
			{
				GridSpacing			"3.0"
				HeightAboveFloor	"1.5"
				RebakeOption		"0"						// 0: cleanup, 1: manual, 2: auto
				NumVisSamples		"1"
				ProbeVisRadius		"0"
				ProbeVisThreshold	"0.1"
				ProbeVisPathRange	"1000.0"
			}
		}
		SoundStackScripts
		{
			CompileStacksStrict "1"
		}
		VisBuilder
		{
			MaxVisClusters "4096"
			PreMergeOpenSpaceDistanceThreshold "128.0"
			PreMergeOpenSpaceMaxDimension "2048.0"
			PreMergeOpenSpaceMaxRatio "8.0"
			PreMergeSmallRegionsSizeThreshold "20.0"
		}

		VDataLocalization
		{
			GameOutputPath	"resource/localization/citadel_vdata"
			TokenPrefix		"Citadel_VData_"
		}
		
		TextureCompiler
		{
			//Compressor              "lz4"
			//CompressMipsOnDisk      "1"
			//CompressMinRatio        "95"
			AllowNP2Textures		"1"
			AllowPanoramaMipGeneration	"1"
			//PublicToolsDefaultMaxRes "2048"
		}
	}

	Source1Import
	{
		// this is just copied from the left4dead3 gameinfo.gi
		"forcevtxfileupconvert" 1
	}

	WorldRenderer
	{
		EnvironmentMaps					1
		EnvironmentMapFaceSize			256
		EnvironmentMapRenderSize		1024
		EnvironmentMapFormat			BC6H
		EnvironmentMapPreviewFormat 		BC6H
		EnvironmentMapColorSpace		linear
		EnvironmentMapMipProcessor		GGXCubeMapBlur
		// Build cubemaps into a cube array instead of individual cubemaps.
		"EnvironmentMapUseCubeArray" 	1
		"EnvironmentMapCacheSizeTools"  300
		BindlessSceneObjectDesc			CitadelBindlessDesc
		GrassCastsShadows				1
	}

	SceneSystem
	{
		GpuLightBinner 1
		FogCachedShadowAtlasWidth 2048
		FogCachedShadowAtlasHeight 2048
		FogCachedShadowTileSize 128
		GpuLightBinnerSunLightFastPath 1
		CSMCascadeResolution 2048
		SunLightManagerCount 0
		SunLightManagerCountTools 0
		DefaultShadowTextureWidth 6144
		DefaultShadowTextureHeight 6144
		DynamicShadowResolution 1

		TransformTextureRowCount	1024
		TransformTextureRowCountToolsMode 6144
		SunLightMaxCascadeSize		4
		SunLightShadowRenderMode	Depth
		LayerBatchThresholdFullsort 20
		NonTexturedGradientFog		1
		// Temp till I can add support in citadel shaders
		DisableLateAllocatedTransformBuffer 1
		MinimumLateAllocatedVertexCacheBufferSizeMB 64
		CubemapFog 1
		VolumetricFog 1
		FrameBufferCopyFormat R11G11B10F
		Tonemapping 0
		
		WellKnownLightCookies
		{
			"blank" "materials/effects/lightcookies/blank.vtex"
			"flashlight" "materials/effects/lightcookies/flashlight.vtex"
		}

		ComputeShaderSkinning 1
	}

	NavSystem
	{
		"NavTileSize" "128.0"
		"NavCellSize" "1.5"
		"NavCellHeight" "2.0"

		// Hull definitions live in scripts/nav_hulls.vdata
		// Preset definitions live in scripts/nav_hulls_presets.vdata
		"NavHullsPreset" "default"

		"NavRegionMinSize" "8"
		"NavRegionMergeSize" "20"
		"NavEdgeMaxLen" "1200"
		"NavEdgeMaxError" "51.0"
		"NavVertsPerPoly" "4"
		"NavDetailSampleDistance" "120.0"
		"NavDetailSampleMaxError" "2.0"
		"NavSmallAreaOnEdgeRemovalSize" "81.0"
	}

	AnimationSystem
	{
		"DisableServerInterpCompensation"	"1"
		"DisableAnimationScript" 	"1"
		"ServerPoseRecipeHistorySize"	"60"
		"ClientPoseRecipeHistorySize"	"60"

	}

	ModelDoc
	{
		"models_gamedata"			"models_gamedata.fgd"
		"features"					"animgraph;modelconfig;gamepreview;wireframe_backfaces;distancefield"
	}

	Particles
	{
		"EnableParticleShaderFeatureBranching"	"1"
		"Float16HDRBackBuffer" "1"
		"PET_SupportFadingOpaqueModels" "1"
		"Features" "non_homogenous_forward_layer_only"
	}

	ConVars
	{	 

// ============== GAMEINFO CONFIG — DYSON EDITION ==============
// =================== Updated: 24.03.2026 =====================

// ==================== SYSTEM & THREADING ====================
host_thread_mode "1"
r_threaded_particles "1"
r_threaded_renderables "1"
r_threaded_shadow_clip "1"
r_threaded_scene_object_update "1"
r_threaded_particle_creation "1"
cl_threaded_bone_setup "1"
cl_threaded_client_leaf_system "1"
cl_threaded_bvs "1"
cl_bone_cache_optimization "1"
sc_layer_batch_threshold_fullsort "80"
sc_cache_envmap_lpv_lookup "1"
r_queued_post_processing "1"
engine_no_focus_sleep "0"
fps_max "0"
mat_queue_mode "2"
mat_async_shader_load "1"
cl_parallel_readpacketentities "1"
phys_multithreading_enabled "1"
animgraph2_enable_parallel_update "1"
animgraph_parallel_postdataupdate "1" // [NEW] Parallel post-data-update animgraph
animgraph_enable_dirty_netvar_optimization "1" // [NEW] Skips unchanged netvars — less CPU
parallel_perform_invalidate_physics "1" // [NEW] Parallel physics invalidation
parallel_update_surrounding_bounds_in_spatial_partition_update "1" // [NEW] Parallel bounds update

// ==================== NETWORK ====================
cl_updaterate "128"
cl_cmdrate "128"
cl_interp "0.03125"
cl_interp_ratio "2"
cl_maxpackets "256"
cl_predict "1"
cl_predictweapons "1"
cl_lagcompensation "1"
net_maxcleartime "0.005"
net_maxroutable "1200"
net_splitpacket_maxrate "30000"
cl_clock_buffer_ticks "1"
sv_lagcomp_filterbyviewangle "false"
sv_maxunlag_player "0.200"
cl_pred_optimize "1"
cl_pred_parallel_postnetwork "1"
cl_skip_hierarchy_update_for_unchanged_entities "1"
sv_parallel_packentities "2"
cl_parallel_readpacketentities_threshold "2"
net_async_clientconnect "1"

// ==================== GRAPHICS CORE ====================
gpu_level "0"
cpu_level "0"
mat_set_shader_quality "0"
r_aspectratio "2.10" // 1.75 = 80 fov | 2.15 = 90fov
citadel_camera_hero_fov 105
citadel_camera_aiming_fov "120" // test Increases zoom (smaller value = stronger zoom)
zoom_sensitivity_ratio "0.8" // Mouse sensitivity in zoom (adjust to yourself)
r_fastzreject "-1"
r_norefresh "1"
r_dynamic "0"
r_citadel_antialiasing "0"

// ==================== SHADOWS & LIGHTING ====================
r_shadows "0"
r_dynamic_shadows "0"
r_shadowrendertotexture "0"
r_shadowmaxrendered "0"
r_rendersun "0"
r_citadel_shadow_quality "0"
r_citadel_shadowdb "256"
r_citadel_sun_shadow_slope_scale_depth_bias "1.0"
r_citadel_gpu_culling_shadows "1"
cl_retire_low_priority_lights "1"
r_cull_duplicate_shadows "1"
r_cull_shadowcasters_using_bounds "1"
csm_max_shadow_dist_override "0"
r_size_cull_threshold_shadow "45"
lb_enable_shadow_casting "0"
lb_csm_draw_alpha_tested "0"
lb_csm_draw_translucent "0"
lb_barnlight_shadowmap_scale "0.5"
lb_csm_cascade_size_override "1"
lb_dynamic_shadow_resolution_quantization "64"
lb_csm_override_staticgeo_cascades_value "0"
lb_csm_receiver_plane_depth_bias "0.00002"
lb_csm_receiver_plane_depth_bias_transmissive_backface "0.0002"
lb_sun_csm_size_cull_threshold_texels "30"
lb_dynamic_shadow_resolution_base "256"
sparseshadowtree_enable_rendering "1"
sparseshadowtree_disable_for_viewmodel "1"
lb_enable_lights "0"
lb_enable_sunlight "0"
lb_enable_baked_shadows "0"
lb_enable_dynamic_lights "0"
r_directlighting "0"
r_ssao "0"
r_ssao_strength "0"
r_citadel_ssao_bent_normals "false"
r_citadel_ssao_denoise_passes "0"
r_citadel_ssao_quality "0"
r_citadel_ssao_radius "0"
r_citadel_ssao_thin_occluder_compensation "0"
r_occlusion "1"
r_occlusion_culling "1"
r_maxdlights "0"
mat_disable_lightwarp "1"
r_citadel_npr_outlines "0"
sc_disable_shadow_fastpath "0"

// ==================== PARTICLES ====================
r_drawparticles "1" // Must be ENABLED, otherwise skills are invisible
r_farz "8500" // Sets map draw distance
r_citadel_selection_outline2_alpha "255"
citadel_player_outline_fade_range_max "10000"
cl_particle_max_count "1500"
cl_particle_budget "0"
cl_particle_batch_mode "1"
r_particle_low_res_render "1"
r_particle_lighting_enable "0"
r_particle_shadows "0"
r_particle_cables_cast_shadows "0"
r_particle_max_detail_level "0"
cl_particle_fallback_base "4"
cl_particle_fallback_multiplier "4"
r_particle_max_size_cull "800"
r_particle_radius_cull "1"
r_particle_skip_update "0"
r_particle_update_rate "0"
r_particle_timescale "1"
r_particle_sim_spike_threshold_ms "5"
r_RainParticleDensity "0"
particle_cluster_nodraw "1"
cl_aggregate_particles "true"
r_wait_on_fence "0"
cl_max_particle_pvs_aabb_edge_length "50"
r_particle_cables_render "0"
r_particle_max_draw_distance "550000"
r_particle_enable_fastpath "1"
r_particle_gpu_implicit "1" // [NEW] GPU implicit particles — faster than CPU simulation
r_meshlet_culling "1" // [NEW] ↓ draw calls
r_hzb_occlusion "1" // [NEW] ↓ overdraw
r_batch_draw_calls "1" // [NEW] ↓ CPU → GPU overhead
r_visibility_framelag "1" // [NEW] frame stability

// ==================== MODELS, LOD & CULLING ====================
r_rootlod "1"                                  
r_lod "1"                                      
r_size_cull_threshold "0"     
r_size_cull_threshold_fade "0" // [NEW] Disables fade on culling — skips extra pass
r_entity_cull_distance_multiplier "5.0"
r_cullforperformance "1"
r_gpu_cull "1"
r_gpu_cull_models "1"
r_gpu_cull_models_range "4000"
r_propsmaxdist "1000"
r_model_lighting_simplified "1"
cl_fasttempentcollision "100000"
skeleton_instance_lod_optimization "1"
enable_boneflex "false"
r_eyes "0"
r_teeth "0"
cl_disable_ragdolls "1"
cl_ragdoll_limit "0"
cl_jiggle_bone_framerate_cutoff "0"
g_debug_ragdoll_visualize "0"
g_ragdoll_fadespeed "999"
g_ragdoll_important_maxcount "0"
g_ragdoll_lifetime "0"
ragdoll_lru_debug_removal "0"
ragdoll_parallel_pose_control "1"
r_drawentities "1"
r_draw_entities "1"
r_render_hair "0"
r_skinning_enabled "1"
r_strip_invisible_during_sceneobject_update "1"
sc_mesh_backface_culling "1"
sc_instanced_mesh_enable "1"
sc_instanced_mesh_gpu_culling "1"
sc_aggregate_gpu_culling "1"
r_allow_onesweep_gpusort "1"
update_all_keyframed_in_spatial_partition_update "1" // [NEW] Keyframed bounds update in spatial partition
always_perform_full_spatial_partition_update "0" // [NEW] Explicitly disable full traversal (default=false)

// ==================== TEXTURES, STREAMING & SHADERS ====================
r_texture_streaming "1"
r_texture_stream_pool_budget "16"
r_texture_stream_lowres_drop_rate "50"
r_texture_stream_mip_skip "15"
r_texture_stream_mip_bias "3"
r_texture_stream_use_only_streamable "1"
sc_instanced_mesh_lod_bias "15"
sc_instanced_mesh_lod_bias_shadow "10"
sc_instanced_mesh_size_cull_bias "10"
sc_fade_distance_scale_override "180"
r_render_view_scale "0.05" // 5% resolution
r_texture_filter_textures "0"
r_texturefilteringquality "0"
mat_mip_linear "0"
mat_trilinear "0"
mat_disable_fancy_blending "1"
mat_reducefillrate "1"
animated_material_attributes "0"
r_texture_eager_eviction "0"
r_mipgen_compute_shader "1"
r_cache_pool_allocations "1"
r_texture_nonstreaming_load "1" // [NEW] Immediate mip loading without streaming — less stutters
r_texture_hookup_uses_threadpool "1" // [NEW] Texture hookup via threadpool
r_vulkan_sw_cmd_lists "1" // [NEW] Software command lists Vulkan — stable frame pacing
r_dx11_software_cmd_lists "1" // [NEW] Software command lists DX11

// ==================== PHYSICS, PROPS & DECALS ====================
cl_phys_timescale "1"
cl_phys_sleep_enable "true"
cl_phys_props_max "0"
r_drawdecals "1"
r_decals "1"
r_queued_decals "0"
r_drawmodeldecals "0"
r_character_decal_resolution "0.01"
r_maxmodeldecal "0"
cloth_update "1"
cloth_sim_on_tick "0"
cloth_filter_transform_stateless "0"
citadel_breakable_prop_breakable_enabled "1"
props_break_max_pieces_perframe "0"
phys_dynamic_scaling "0"
phys_log_updaters "0"
phys_powered_ragdoll_debug "0"
phys_show_stats "0"
phys_visualize_traces "0"

// ==================== ATMOSPHERE & WATER ====================
r_drawskybox "0" // Disables skybox rendering (sky)
r_draw3dskybox "0" // Disables 3D skybox rendering (more detailed version of skybox)
r_monitor_3dskybox "0" // This is a developer command, most likely for debugging 3D skyboxes
r_fog_enable "0" // Disables fog
r_enable_volume_fog "0" // Disables volume fog which creates more realistic fog effects
r_enable_gradient_fog "0" // Disables gradient fog used to create fog with variable density
r_enable_cubemap_fog "0" // Disables fog using cubemaps for more complex effects
r_citadel_fog_quality "0" // Sets Citadel-specific fog quality to the lowest
r_drawwater "0" // Disables water rendering
r_grass_quality "0" // Disables grass rendering
r_debug_precipitation "0" // Disables debug display of precipitation (rain, snow)

// ==================== POST-PROCESS & MISC ====================
mat_postprocess_enable "0"
mat_dynamic_tonemapping "0"
mat_auto_reduce_quality "1"
mat_auto_reduce_materials "1"
mat_disable_bloom "1"
mat_disable_bands "1"
mat_disable_software_led "1"
mat_disable_distortion "1"
mat_disable_fancy_alpha "1"
mat_colorcorrection "0"
mat_motion_blur_enabled "0"
r_citadel_motion_blur "0"
r_depth_of_field "0"
r_lensflare "0"
r_effects_bloom "0"
r_screenoverlay "0"
r_filmgrain "0"
r_distancefield_enable "0"
r_citadel_depthoffield_enable "0"

// ==================== GAMEPLAY, UI & EFFECTS ====================
r_drawtracers "1" // Enables bullet tracers display
r_drawtracers_firstperson "1" // Enables first-person bullet tracers display
cl_show_bloodspray "0" // Disables blood spray display
cl_show_splashes "0" // Disables splash display (e.g. from water)
cl_ejectbrass "0" // Disables shell ejection
cl_playerspraydisable "1" // Disables player spray (graffiti) display
citadel_damage_indicator "0" // Disables damage indicator
citadel_damage_overlay "0" // Disables damage overlay effect
citadel_damage_screen_effects "0" // Disables screen effects when receiving damage
citadel_post_damage_vignette "0" // Disables vignette effect (edge darkening) after receiving damage
citadel_show_new_damage_feedback_numbers "0" // Disables display of dealt damage numbers
citadel_hud_objective_health_enabled "2" // Sets objective health display mode
citadel_boss_glow_disabled "0" // Disables boss glow
citadel_hideout_ball_show_juggle_count "0" // Shows juggle count in hideout
citadel_hideout_ball_show_juggle_fx "0" // Enables visual effects when juggling ball in hideout
"citadel_unit_status_use_new" "true" // To return old HP bar, change the last word true to false
citadel_use_vertical_healthbars "0" // Disables use of vertical health bars
citadel_trooper_glow_disabled "0" // Disables glow on regular enemies ("troopers")
citadel_trooper_friendly_glow_disabled "0" // Disables glow on friendly "troopers"
r_citadel_outlines "1" // Enables outline specific to "Citadel"
citadel_enemy_glow_enabled "0" // Disables enemy glow
citadel_player_glow_disabled "0" // Disables player glow
citadel_damage_report_enable "1" // Disables damage report
citadel_damage_text_show_effectiveness "0" // Disables damage effectiveness display in text
citadel_death_replay_enabled "0" // Disables replay after death
spec_replay_enable "0" // Disables replays in spectator mode
citadel_camera_wobble_disable "1" // Disables camera shake
citadel_camera_soft_collision "0" // Disables "soft" camera collisions with objects
mp_fadetoblack "1" // Enables fade to black (e.g. on death in multiplayer)
panorama_disable_box_shadow "1" // Disables shadows on interface elements (Panorama UI)
panorama_disable_blur "1" // Disables blur in interface (Panorama UI)
panorama_disable_parallax "1" // Disables parallax effect in interface (Panorama UI)
panorama_disable_text_shadow "1" // Disables text shadows in interface (Panorama UI)
panorama_disable_animations "1" // Disables animations in interface (Panorama UI)
r_dashboard_render_quality "0" // Sets dashboard (main menu) render quality to low
panorama_max_fps "60" // Limits maximum FPS in interface to 60
panorama_classes_perf_warning_threshold_ms "0.75" // Sets threshold for Panorama UI class performance warnings
panorama_disable_render_target_cache "0" // Enables render target cache for Panorama UI
panorama_js_minidumps "1" // Enables creation of minidumps for JavaScript in Panorama UI (for debugging)
panorama_joystick_enabled "0" // Disables joystick support in interface
panorama_skip_composition_layer_content_paint "1" // Skips rendering of composition layer content (optimization)
r_drawviewmodel "0" // Disables rendering of weapon model in hands
bullet_tracer_path_debug "0" // Disables debug of bullet tracer path

// ==================== AI & ANIMATION ====================
ai_disabled "0"
ai_expression_optimization "1"
ai_strong_optimizations_no_checkstand "1"
ai_use_visibility_cache "1"
ai_foot_sweep_enable "0"
citadel_bot_brain_disable_attacks "1"
citadel_bot_brain_disable_movement "1"
animgraph_draw_traces "0"
animgraph_enable "1"
animgraph_enable_parallel_op_evaluation "1"
animgraph_enable_parallel_preupdate "1"
animgraph_enable_parallel_update "1"
animgraph_record_all "0"
citadel_ag2_controller_parallel_update_enabled "1"
citadel_player_anim_debug "0"
citadel_player_debug_animgraph_movement "0"
anim_decode_forcewritealltransforms "true"
animgraph_footlock_enabled "0"
animgraph_footlock_ik_enable "0"
ik_fabrik_align_chain "0"
ik_final_fixup_enable "0"
learning_rate "0.1"
modifier_aura_debug "0"
think_limit "10"
zipline_use_new_latch "0"

// ==================== SOUND ====================
audio_relevance_debug_enabled "0"
citadel_enable_vdata_sound_preload "true"
disable_source_soundscape_trace "1"
reset_voice_on_input_stallout "0"
snd_envelope_rate "100.0"
snd_event_cone_debug "0"
snd_occlusion_debug "0"
snd_report_audio_nan "1"
snd_sos_max_event_base_depth "10"
snd_sound_areas_debug "0"
snd_soundmixer_update_maximum_frame_rate "0"
snd_steamaudio_active_hrtf "0"
snd_steamaudio_enable_custom_hrtf "0"
snd_steamaudio_enable_pathing "0"
snd_steamaudio_invalid_path_length "0.0"
snd_steamaudio_ir_duration "1.0"
snd_steamaudio_load_pathing_data "0"
snd_steamaudio_load_reverb_data "0"
snd_steamaudio_reverb_update_rate "10.0"
snd_ui_positional "1"
snd_ui_spatialization_spread "2.4"
sos_use_guid_filter "1"
soundscape_radius_debug "0"
voice_in_process "1"
voice_input_stallout "0.5"
audio_enable_vmix_mastering "0"
snd_mix_async "1"
soundscape_update_include_bots "0"
snd_steamaudio_enable_reverb "0"
snd_steamaudio_num_threads "4"
snd_occlusion_rays "0"
run_voicecontainer_async "1" // [NEW] Asynchronous voice container processing

// ==================== MINIMAP ====================
citadel_minimap_draw_fow "0"
citadel_minimap_show_hitboxes "0"
citadel_minimap_use_canvas_for_neutrals "0"
citadel_minimap_use_canvas_for_shop "0"
citadel_minimap_use_effects "0"

// ==================== MISC & DEBUG ====================
citadel_bullet_log_entities_hit "0"
citadel_bullet_tracer_recycling_enabled "1"
citadel_bullet_time_warp_decay_percent "1"
citadel_movement_debugdraw "0"
citadel_per_weapon_per_surface_impact_effects "1"
cq_buffer_bloat_msecs_max "120"
imgui_debug_draw_dashboard_window "0"
imgui_enable "0"
imgui_enable_input "0"
imgui_temp_enable "0"
r_citadel_gpu_debug_draw "0"
r_drawdevvisualizers "0"
r_flashlightlockposition "0"
r_flashlightvisualizetrace "0"
show_visibility_boxes "0"
cl_usesocketsforloopback "1"

// ==================== INPUT ====================
m_rawinput "1"
cl_input_enable_raw_keyboard "1"
m_filter "0"
input_virtualization_block_mouse "1"
cl_joystick_enabled "0"
in_button_double_press_window "0.3"

// ==================== MEMORY CLEANUP ====================
r_pipeline_stats_present_flush "0"
r_pipeline_stats_command_flush "0"

// ==================== ADDITIONAL COMMANDS ====================
engine_max_ticks_to_simulate "33"
cl_async_usercmd_send "true"
cl_async_usercmd_send_disabled_recvmargin_min "0.5"
cl_tickpacket_desired_queuelength "0"
cl_tickpacket_recvmargin_desired "5"
cl_prediction_savedata_postentitypacketreceived "1"
cl_smooth "0"
cl_smoothtime "0.01"
cl_smooth_draw_debug "0"
cl_interp_parallel "1"
r_multiscattering "1"
r_shadow_half_resolution "1"
r_shadowlod "0"
cl_globallight_shadow_mode 0
sc_disable_shadow_materials 1
sc_disable_spotlight_shadows 1
r_light_static "0"
r_lightaverage "0"
r_worldlights "0"
r_worldlightmin "0.0001"
r_hunkalloclightmaps "0"
r_lightmap_size_directional_irradiance "0"
mat_disable_phong "1"
mat_disable_rimlight "1"
mat_hdr_level "0"
mat_tonemapping_occlusion_use_stencil "0"
mat_force_bloom "0"
mat_force_tonemap "0"
mat_colcorrection_disableentities "0"
r_post_bloom "0"
sc_disable_baked_lighting true
r_directional_lightmaps false
sc_hdr_enabled_override "0"
r_use_memory_budget_model true
gpu_mem_level "0"
r_citadel_distancefield_farfield_enable "false"
sc_instanced_mesh_motion_vectors "0"
sc_instanced_mesh_size_cull_bias_shadow "10"
sc_clutter_enable "0"
sc_aggregate_bvh_threshold "16"
sc_layer_batch_threshold "16"
r_max_portal_render_targets "2"
r_texture_pool_size "256"
r_texture_budget_update_period "0.5"
r_texture_pool_reduce_rate "512"
r_texture_budget_dynamic "1"
r_texture_budget_threshold "0.8"
r_renderdoc_auto_shader_pdbs "0"
r_particle_mixed_resolution_viewstart "800"
r_particle_model_new8 "0"
r_particle_skip_postsim "1"
r_limit_particle_job_duration "1"
cl_particle_sim_fallback_base_multiplier "10"
r_particle_min_timestep "0.0014"
mat_reduceparticles "1"
r_waterforceexpensive "0"
r_cheapwaterstart "0"
r_cheapwaterend "1"
mat_disable_water "1"
r_grass_start_fade "0"
r_grass_end_fade "0"
cl_phys_props_enable "0"
ai_force_serverside_ragdoll "1"
phys_threaded_cloth_bone_update "1"
phys_threaded_kinematic_bone_update "1"
phys_threaded_transform_update "1"
presettle_cloth_iterations "0"
pred_cloth_pos_max "0"
pred_cloth_pos_multiplier "0"
pred_cloth_pos_strength "0"
pred_cloth_rot_high "0"
pred_cloth_rot_low "0"
pred_cloth_rot_multiplier "0"
rope_collide "0"
rope_subdiv "0"
rope_wind_dist "0"
rope_smooth_enlarge "0"
rope_smooth_maxalpha "0"
rope_smooth_maxalphawidth "0"
rope_smooth_minalpha "0"
rope_smooth_minwidth "0"
r_ropetranslucent "0"
battery_saver "0"
citadel_crosshair_hit_marker_duration 0
r_citadel_selection_outline2_fade_pow -95
violence_hblood "0"
violence_ablood "0"
cl_burninggibs "0"
violence_hgibs "0"
violence_agibs "0"
r_haircull_percent "100"
cl_impacteffects "0"
cl_eye_yaw_multiplier "0"
sv_footsteps "0"
sv_voiceenable "0"
volume "0.01"
dsp_volume "0"
snd_occlusion_bounces "0"
soundsystem_update_async "1"
sc_allow_dynamic_constant_batching "1"
iv_parallel_latch "1"
iv_wrapped_parallel_latch "1"
cl_physics_highlight_active "0"
phys_highlight_expensive_objects_strength "0"
r_citadel_distancefield_blur "false"
r_citadel_distancefield_shadows "false"
mat_max_lighting_complexity "1"
r_light_sensitivity_mode "true"
r_muzzleflashbrightness "0.01"
lb_dynamic_shadow_resolution "false"
r_environment_map_roughness_range "0.01"
lb_cubemap_normalization_max "1"
lb_cubemap_normalization_roughness_begin "0.01"
thumper_use_plane_reflection "false"
sc_instanced_mesh_mesh_shader "false"
lb_mixed_shadows "false"
fx_drawmetalspark "false"
citadel_trooper_outline_enabled "false"
sv_remove_ent_from_pvs "1"
r_citadel_distancefield_down_sample "6"
ai_gather_conditions_async "true"
enable_priority_boost "1"
update_voices_low_priority "true"
cl_phys_networked_start_sleep "true"
func_break_max_pieces "1"
sc_clutter_density_none_size "0.1"
r_draw_particle_children_with_parents "0"
r_ssao_blur "0"
r_decals_overlap_threshold "5"
r_flashlightshadowatten "0"
sc_allow_dithered_lod "0"
sc_dithered_lod_transition_amt "0"
lb_dynamic_shadow_penumbra "false"
nav_pathfind_multithread "1"
r_particle_batch_collections "1"
r_texture_stream_resolution_bias "0.01"
r_world_wind_frequency_grass "0"
r_world_wind_frequency_trees "0"
mat_tonemap_bloom_scale "0"
lb_barnlight_shadow_use_precomputed_vis "0"
mesh_calculate_curvature_smooth_pass_count "0"
panorama_transition_time_factor "2"
phys_expensive_shape_threshold "100"
sc_max_framebuffer_copies_per_layer "0"
fs_async_threads "8"
sv_pvs_max_distance "4000"
con_enable "1"
con_filter_enable "1"
rate "786432"
cl_glow_brightness "5"
r_citadel_selection_outline2_offset "1"
r_citadel_selection_outline2_fade_pow "-95"
citadel_trooper_glow_disabled "true"
r_character_decal_resolution "0.01"
r_particle_max_draw_distance "550000"
presettle_cloth_iterations "0"
pred_cloth_pos_max "0"
pred_cloth_pos_multiplier "0"
pred_cloth_pos_strength "0"
pred_cloth_rot_high "0"
pred_cloth_rot_low "0"
pred_cloth_rot_multiplier "0"
sc_instanced_mesh_lod_bias "15"
sc_instanced_mesh_lod_bias_shadow "10"
sc_instanced_mesh_size_cull_bias "10"
sc_instanced_mesh_size_cull_bias_shadow "10"
sc_aggregate_bvh_threshold "16"
sc_layer_batch_threshold "16"
citadel_damage_offscreen_indicator_disabled "0"
citadel_portrait_world_renderer_off "1"
citadel_damage_text_lifetime "1.5"
citadel_damage_text_lifetime_new "0.75"
citadel_damage_text_lifetime_accumulated_new "2"
hud_free_cursor "0"
mm_idle_show_warning_at_s "999"
snd_steamaudio_num_threads "4"
r_texture_lod_scale "4"
r_fallback_texture_lod_scale "4"

// ==================== NEW COMMANDS FROM LATEST PATCH ====================
r_AirboatViewDampenDamp "1"
r_AirboatViewDampenFreq "7"
r_AirboatViewZHeight "0"
r_JeepViewDampenDamp "1"
r_JeepViewDampenFreq "7"
r_JeepViewZHeight "10"
r_RainAllowInSplitScreen "0"
r_add_views_in_pre_output "0"
r_allow_low_gpu_memory_mode "1"
r_always_render_all_windows "0"
r_arealights "1"
r_async_compute_fog "0"
r_citadel_render_game "1"
r_draw_instances "1"
r_drawropes "0"
r_dopixelvisibility "1"
r_force_zprepass "1"
r_frame_sync_enable "0"
r_lighting_only "0"
r_opaque "1"
r_translucent "1"
r_citadel_fsr2_sharpness "0.2"
r_citadel_fsr_enable_mip_bias "1"
r_citadel_fsr_rcas_sharpness "0.2"
r_fallback_texture_lod_scale "4"
r_low_latency "1"
r_citadel_screenspace_particles_full_res "0"
r_decals_max_on_deformables "0"
r_particle_allowprerender "1"
r_particle_cables_culling "1"
r_grass_allow_flattening "0"
r_grass_density_mode "0"
r_grass_vertex_lighting "0"
r_hair_ao "0"
r_hair_indirect_transmittance "0"
r_hair_meshshader "0"
r_hair_shadowtile "0"
r_force_thick_hair "0"
r_async_shader_compile_notify_frequency "999"
r_character_decal_monitor_draw_frustum "0"
r_character_decal_monitor_emissive "0"
r_character_decal_monitor_render_res "64"
r_character_decal_renderdoc_capture "0"
r_citadel_depth_prepass_cull_threshold "60"
r_citadel_depth_prepass_dynamic_objects "1"
r_citadel_glow_health_bar_debug "0"
r_citadel_gpu_culling_two_pass "1"
r_citadel_npr_force_solid_outline "true"
r_citadel_npr_outlines_max_dist "1000"
r_citadel_selection_outline2_alpha "0.8"
r_cubemap_debug_colors "0"
r_cubemap_normalization "1"
r_debug_draw_safe_area_insets "0"
r_dof_override "0"
r_drawblankworld "0"
r_drawpixelvisibility "0"
r_experimental_lag_limiter "0"
r_flashlightambient "0"
r_flashlightbrightness "0"
r_flashlightfar "0"
r_flashlightfov "90"
r_flashlightlinear "0"
r_particle_debug_filter ""
r_pixelvisibility_partial "1"
r_pixelvisibility_spew "0"
r_render_portals "1"
r_reset_character_decals "0"
r_shadowtile_waveops "0"
r_show_gpu_memory_visualizer "0"
r_showdebugrendertarget "0"
r_showsunshadowdebugrendertargets "0"
r_showsunshadowdebugsplitvis "0"
r_smooth_morph_normals "0"
r_suppress_redundant_state_changes "1"
r_vma_defrag_enabled "1"
r_world_wind_strength "0"
citadel_outer_radius_scaler "0.25"
citadel_use_pvs_for_players "true"
closecaption "false"
iv_parallel_restore "false"
mat_viewportscale "0.01"
panorama_allow_transitions "false"
panorama_async_compute_mipgen "1"
panorama_max_overlay_fps "15"
panorama_temp_comp_layer_min_dimension "128"
panorama_use_new_occlusion_invalidation "1"
phys_cull_internal_mesh_contacts "true"
r_citadel_clip_sphere_min_opacity "0"
r_citadel_enable_pano_world_blur "false"
r_decals_default_fade_duration "1"
r_light_flickering_enabled "false"
r_lightmap_bicubic_filtering "1"
r_lightmap_size "4"
r_mapextents "4500"
r_physics_particle_op_spawn_scale "0"
sc_screen_size_lod_scale_override "0.01"
cl_simulate_dormant_entities "0"
lb_enable_stationary_lights "1"
r_citadel_gpu_culling "1" // Enables the main GPU geometry culling system

// ================ END OF CONFIG — DYSON EDITION ================





		"rate"
		{
			"min"		"98304"
			"default"	"786432"
			"max"		"1000000"
		}
		"sv_minrate"	"98304"
		"sv_maxunlag"	"0.500"
		"sv_maxunlag_player" "0.200"
		"sv_lagcomp_filterbyviewangle" "false"

		// Spew warning when adding/removing classes to/from the top of the hierarchy
		"panorama_classes_perf_warning_threshold_ms" "0.75"

		// Panorama - enable minidumps on JS exceptions
		"panorama_js_minidumps" "1"
		// Enable the render target cache optimization.
		"panorama_disable_render_target_cache" "0"

		// Enable the composition layer optimization
		"panorama_skip_composition_layer_content_paint" "1"

		// too expensive (500MB+) to load this
		"snd_steamaudio_load_reverb_data" "0"
		"snd_steamaudio_load_pathing_data" "0"

		// Steam Audio project specific convars
		"snd_steamaudio_enable_custom_hrtf"		"0"
		"snd_steamaudio_active_hrtf"			"0"
		"snd_steamaudio_reverb_update_rate"		"10.0"
		"snd_steamaudio_ir_duration"			"1.0"
		"snd_steamaudio_enable_pathing"			"0"
		"snd_steamaudio_invalid_path_length"	"0.0"
		"cl_disconnect_soundevent"				"citadel.convar.stop_all_game_layer_soundevents"
		"snd_event_browser_default_stack"		"citadel_default_3d"
		
		// voip
		"voice_in_process"			            "1"

		// Sound debugging
		"snd_report_audio_nan" "1"

		// Audio system settings
		"snd_sos_max_event_base_depth" "10"
		"sos_use_guid_filter" "1"

		"voice_always_sample_mic"               
		{
			"version"	"2"
			"default"	"0"
		}

		"reset_voice_on_input_stallout"         "0"
		"voice_input_stallout"                  "0.5"
		"cl_usesocketsforloopback" "1"
		"cl_poll_network_early" "0"

		// Perf/Parallelism
		"iv_parallel_restore" "1"

		// For perf reasons, since we don't use source-based DSP:
		"disable_source_soundscape_trace"       "1"
		
		// Networking - Induced latency (pred offset)
		"cl_tickpacket_recvmargin_desired" "5" 					// 5 ms base, min. floor for protecting against thrashing the queue
		"cl_tickpacket_desired_queuelength" "0"					// 0 = attempt to always reach the queue's min floor
		"cl_async_usercmd_send_disabled_recvmargin_min" "0.5"	// Additional frame since we do not use the async usercmd send (potentially unneccessary)
		"cl_clock_buffer_ticks"	"1"
		"cl_async_usercmd_send" "false"

		"fps_max"		"400"
		"fps_max_ui"	"120"

		"in_button_double_press_window" "0.3"

		// Convars that control spatialization of UI audio.
		"snd_ui_positional"								"1"
		"snd_ui_spatialization_spread"					"2.4"
		
		// sound volume rate change limiting
		"snd_envelope_rate"								"100.0"
		"snd_soundmixer_update_maximum_frame_rate" 		"0"

		//don't let people mess with speaker config settings.
		"speaker_config"
		{
			"min"		"0"
			"default"	"0"
			"max"		"2"
		}

		"cq_buffer_bloat_msecs_max" "120"

		"snd_soundmixer"						"Default_Mix"
		"cloth_filter_transform_stateless" "0"

		"cl_joystick_enabled" "0"
		"panorama_joystick_enabled" "0"

		"snd_event_browser_focus_events" "true"

		"cl_max_particle_pvs_aabb_edge_length" "100"
		
		// Allow aggregation of particles (for perf)
		"cl_aggregate_particles" "true"
		
		"citadel_enable_vdata_sound_preload" "true"
	}

	Memory
	{
		"EstimatedMaxCPUMemUsageMB"	"1"
		"EstimatedMinGPUMemUsageMB"	"1"

		"ShowInsufficientPageFileMessageBox" "1"
		"ShowLowAvailableVirtualMemoryMessageBox" "1"
	}
}
