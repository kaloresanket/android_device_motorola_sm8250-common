# Audio {{{
# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio_hal.period_size=192

##Ambisonic Capture
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.ambisonic.capture=false \
persist.vendor.audio.ambisonic.auto.profile=false \
debug.sf.auto_latch_unsignaled=0 \
debug.sf.disable_backpressure=1 \
ro.surface_flinger.enable_frame_rate_override=false

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
ro.audio.resampler.psd.stopband=132 \
ro.audio.resampler.psd.halflength=960 \
ro.audio.resampler.psd.cutoff_percent=98 \
ro.audio.resampler.psd.tbwcheat=0 \
ro.audio.usb.period_us=20375 \
persist.bluetooth.sbc_hd_higher_bitrate=1

# Adaptive Suspend
PRODUCT_SYSTEM_PROPERTIES += \
suspend.max_sleep_time_millis=40000 \
suspend.short_suspend_backoff_enabled=true \
suspend.short_suspend_threshold_millis=2000

# Filesystem
PRODUCT_PROPERTY_OVERRIDES += fs_mgr.overlayfs.prefer_cache_backing_storage=true

# FUSE passthrough
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.fuse.passthrough.enable=true

# Multi-Gen LRU
PRODUCT_PROPERTY_OVERRIDES += \
persist.device_config.mglru_native.lru_gen_config=core

##Colors
PRODUCT_PROPERTY_OVERRIDES += \
vendor.display.qdcm.disable_factory_mode=1 \
ro.boot.theme=1 \
ro.telephony.block_binder_thread_on_incoming_calls=false \
vendor.display.qdcm.mode_combine=1 \
debug.renderengine.backend=skiaglthreaded

# Core Control
ro.vendor.config.corectl=1

#Enable DS2, Hardbypass feature for Dolby
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.dolby.ds2.enabled=false\
vendor.audio.dolby.ds2.hardbypass=false

# recorded
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.apptype.multirec.enabled=false

##fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.fluencetype=none\
persist.vendor.audio.fluence.voicecall=true\
persist.vendor.audio.fluence.voicerec=false\
persist.vendor.audio.fluence.speaker=false\
persist.vendor.audio.fluence.tmic.enabled=false

#test for aux Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.camera.logInfoMask=false \
vendor.camera.aux.packagelist=com.snapchat.android,com.ss.android.ugc.aweme,org.codeaurora.snapcam \
persist.vendor.camera.privapp.list=org.lineageos.aperture,com.ss.android.ugc.aweme,org.codeaurora.snapcam

# Improve graphics
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.purgeable_assets=1 \
# Touch hax
ro.vendor.qti.cgroup_follow.enable=true \
persist.vendor.qti.inputopts.enable=true \
persist.vendor.qti.inputopts.movetouchslop=0.6 \
ro.qcom.adreno.qgl.ShaderStorageImageExtendedFormats=0

# Pre-rendering
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.perf.scroll_opt=true
##speaker protection v3 switch and ADSP AFE API version
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.spv3.enable=true\
persist.vendor.audio.avs.afe_api_version=2

#disable tunnel encoding
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.tunnel.encode=false

#Disable RAS Feature by default
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.ras.enabled=false

#Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.buffer.size.kb=32

#Enable audio track offload by default
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.track.enable=true

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
vendor.voice.path.for.pcm.voip=true

#Enable multi channel aac through offload
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.multiaac.enable=true

# Audio Rotation
PRODUCT_PROPERTY_OVERRIDES += \
ro.audio.monitorRotation=true

#Disable Multiple offload sesison
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.multiple.enabled=false

#Disable Compress passthrough playback
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.passthrough=false

#Disable surround sound recording
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.ssr=false

#enable dsp gapless mode by default
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.offload.gapless.enabled=true

#timeout crash duration set to 20sec before system is ready.
#timeout duration updates to default timeout of 5sec once the system is ready.
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.hal.boot.timeout.ms=20000

#enable pbe effects
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.safx.pbe.enabled=false

#parser input buffer size(256kb) in byte stream mode
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.parser.ip.buffer.size=262144

#flac sw decoder 24 bit decode capability
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.flac.sw.decoder.24bit=true

#split a2dp DSP supported encoder list
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac

# A2DP offload support
PRODUCT_PROPERTY_OVERRIDES += \
ro.bluetooth.a2dp_offload.supported=true

# Disable A2DP offload
PRODUCT_PROPERTY_OVERRIDES += \
persist.bluetooth.a2dp_offload.disabled=false

# A2DP offload DSP supported encoder list
PRODUCT_PROPERTY_OVERRIDES += \
persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd

#enable software decoders for ALAC and APE
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.use.sw.alac.decoder=true
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.use.sw.ape.decoder=true

#enable software decoder for MPEG-H
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.use.sw.mpegh.decoder=true

#enable hw aac encoder by default
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.hw.aac.encoder=true

#Set HAL buffer size to samples equal to 3 ms
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio_hal.in_period_size=144

#Set HAL buffer size to 3 ms
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio_hal.period_multiplier=3

#ADM Buffering size in ms
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.adm.buffering.ms=2

#enable headset calibration
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.volume.headset.gain.depcal=true

#enable dualmic fluence for voice communication
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.fluence.voicecomm=true

#enable keytone FR
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.hal.output.suspend.supported=true

#Enable AAudio MMAP/NOIRQ data path
#2 is AAUDIO_POLICY_AUTO so it will try MMAP then fallback to Legacy path
PRODUCT_PROPERTY_OVERRIDES += aaudio.mmap_policy=2
#Allow EXCLUSIVE then fall back to SHARED.
PRODUCT_PROPERTY_OVERRIDES += aaudio.mmap_exclusive_policy=2
PRODUCT_PROPERTY_OVERRIDES += aaudio.hw_burst_min_usec=2000

#enable mirror-link feature
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.enable.mirrorlink=false

#enable voicecall speaker stereo
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.voicecall.speaker.stereo=true

#enable AAC frame ctl for A2DP sinks
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.bt.aac_frm_ctl.enabled=true

#enable VBR frame ctl
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.bt.aac_vbr_frm_ctl.enabled=true

#add dynamic feature flags here
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.feature.a2dp_offload.enable=true \
vendor.audio.feature.afe_proxy.enable=true \
vendor.audio.feature.anc_headset.enable=false \
vendor.audio.feature.battery_listener.enable=true \
vendor.audio.feature.compr_cap.enable=false \
vendor.audio.feature.compress_in.enable=true \
vendor.audio.feature.compress_meta_data.enable=true \
vendor.audio.feature.compr_voip.enable=true \
vendor.audio.feature.concurrent_capture.enable=true \
vendor.audio.feature.custom_stereo.enable=true \
vendor.audio.feature.display_port.enable=true \
vendor.audio.feature.dsm_feedback.enable=false \
vendor.display.use_smooth_motion=1 \
vendor.audio.feature.dynamic_ecns.enable=true \
vendor.audio.feature.ext_hw_plugin.enable=false \
vendor.audio.feature.external_dsp.enable=false \
vendor.audio.feature.external_speaker.enable=false \
vendor.audio.feature.external_speaker_tfa.enable=false \
vendor.audio.feature.fluence.enable=true \
vendor.audio.feature.fm.enable=true \
vendor.audio.feature.hdmi_edid.enable=true \
vendor.audio.feature.hdmi_passthrough.enable=true \
vendor.audio.feature.hfp.enable=true \
vendor.audio.feature.hifi_audio.enable=false \
vendor.audio.feature.hwdep_cal.enable=false \
vendor.audio.feature.incall_music.enable=true \
vendor.audio.feature.multi_voice_session.enable=true \
vendor.audio.feature.keep_alive.enable=true \
vendor.audio.feature.kpi_optimize.enable=true \
vendor.audio.feature.maxx_audio.enable=false \
vendor.audio.feature.ras.enable=true \
vendor.audio.feature.record_play_concurency.enable=false \
vendor.audio.feature.src_trkn.enable=true \
vendor.audio.feature.spkr_prot.enable=true \
vendor.audio.feature.ssrec.enable=true \
vendor.audio.feature.usb_offload.enable=true \
vendor.audio.feature.usb_offload_burst_mode.enable=true \
vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
vendor.audio.feature.deepbuffer_as_primary.enable=false \
vendor.audio.feature.vbat.enable=true \
vendor.audio.feature.wsa.enable=false \
vendor.audio.feature.audiozoom.enable=false \
vendor.audio.feature.snd_mon.enable=true

#audio becoming noisy intent broadcast delay
PRODUCT_PRODUCT_PROPERTIES += \
audio.sys.noisy.broadcast.delay=500

#audio device switch mute latency factor for draining unmuted data
PRODUCT_PRODUCT_PROPERTIES += \
audio.sys.mute.latency.factor=2

#audio device switch mute latency to absorb routing activities
PRODUCT_PRODUCT_PROPERTIES += \
audio.sys.routing.latency=0

#offload minimum duration set to 30sec
PRODUCT_PRODUCT_PROPERTIES += \
audio.offload.min.duration.secs=30

#offload pausetime out duration to 3 secs to inline with other outputs
PRODUCT_PRODUCT_PROPERTIES += \
audio.sys.offload.pstimeout.secs=3

# Reduce client buffer size for fast audio output tracks
PRODUCT_PRODUCT_PROPERTIES += \
af.fast_track_multiplier=1

#Enable offload audio video playback by default
PRODUCT_PRODUCT_PROPERTIES += \
audio.offload.video=true

#Enable music through deep buffer
PRODUCT_PRODUCT_PROPERTIES += \
audio.deep_buffer.media=true

#audio becoming noisy intent broadcast delay
PRODUCT_PRODUCT_PROPERTIES += \
audio.sys.noisy.broadcast.delay=500

#Set AudioFlinger client heap size
PRODUCT_PRODUCT_PROPERTIES += \
ro.af.client_heap_size_kbyte=7168

#enable deep buffer
PRODUCT_PRODUCT_PROPERTIES += \
media.stagefright.audio.deep=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.dualmic.config=endfire \
    ro.config.vc_call_vol_steps=8
# }}}

# Bluetooth {{{
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=hastings

#Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.soc=hastings
#split a2dp support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.enable.splita2dp=true
#a2dp offload capability
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-aptxadaptiver2
#Embedded wipower mode
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.bluetooth.wipower=false
#aac frame control support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true
#A2dp Multicast support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.a2dp_mcast_test.enabled=false
#TWS+ state support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.twsp_state.enabled=false
#Scrambling support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.scram.enabled=false
#AAC VBR support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=true
#AptX Adaptive R2.1 support
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=false

# Set the Bluetooth Class of Device
# Service Field: 0x5A -> 90
#    Bit 17: Networking
#    Bit 19: Capturing
#    Bit 20: Object Transfer
#    Bit 22: Telephony
# MAJOR_CLASS: 0x02 -> 2 (Phone)
# MINOR_CLASS: 0x0C -> 12 (Smart Phone)
PRODUCT_PRODUCT_PROPERTIES += \
    bluetooth.device.class_of_device=90,2,12

# Set supported Bluetooth profiles to enabled
PRODUCT_PRODUCT_PROPERTIES += \
    bluetooth.hardware.power.operating_voltage_mv=3700 \
    bluetooth.profile.asha.central.enabled?=true \
    bluetooth.profile.a2dp.source.enabled?=true \
    bluetooth.profile.avrcp.target.enabled?=true \
    bluetooth.profile.bas.client.enabled?=true \
    bluetooth.profile.gatt.enabled?=true \
    bluetooth.profile.hfp.ag.enabled?=true \
    bluetooth.profile.hid.device.enabled?=true \
    bluetooth.profile.hid.host.enabled?=true \
    bluetooth.profile.map.server.enabled?=true \
    bluetooth.profile.opp.enabled?=true \
    bluetooth.profile.pan.nap.enabled?=true \
    bluetooth.profile.pan.panu.enabled?=true \
    bluetooth.profile.pbap.server.enabled?=true \
    bluetooth.profile.sap.server.enabled?=true \
# }}}

# Camera {{{
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.physical.num=4 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.gyro.disable=0 \
    persist.vendor.camera.is_type=4
# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-8192-dalvik-heap.mk)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.dex2oat-filter=speed

# Display {{{
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno \
	ro.hwui.render_ahead=5

PRODUCT_PROPERTY_OVERRIDES += \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.kona.api30 \
    vendor.opengles.version=196610

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.sf.color_saturation=1.0 \
    persist.sys.sf.color_mode=9 \
    persist.sys.sf.native_mode=2 \
    debug.sf.hw=0 \
    debug.egl.hw=0 \
    debug.sf.high_fps_late_app_phase_offset_ns=1000000 \
    debug.mdpcomp.logs=0 \
    vendor.gralloc.disable_ubwc=0 \
    vendor.display.disable_scaler=0 \
    vendor.display.disable_excl_rect=0 \
    vendor.display.disable_excl_rect_partial_fb=1 \
    vendor.display.comp_mask=0 \
    vendor.display.enable_posted_start_dyn=1 \
    vendor.display.enable_optimize_refresh=1 \
    vendor.display.use_smooth_motion=1 \
    vendor.display.enable_camera_smooth=1 \
    vendor.display.enable_allow_idle_fallback=1

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.disable_offline_rotator=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_client_composition_cache=1 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.enable_advanced_sf_phase_offset=1 \
    debug.sf.high_fps_late_sf_phase_offset_ns=-2000000 \
    debug.sf.high_fps_early_phase_offset_ns=-2000000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=-2000000

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.demo.hdmirotationlock=false

#Set WCG properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.has_wide_color_display=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.has_HDR_display=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.use_color_management=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.wcg_composition_dataspace=143261696
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.protected_contents=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.set_touch_timer_ms=2000
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.force_hwc_copy_for_virtual_displays=true
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.max_frame_buffer_acquired_buffers=3
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.surface_flinger.max_virtual_display_dimension=4096

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.idle_time=4000 \
    vendor.display.disable_idle_time_hdr=1 \
    vendor.display.disable_idle_time_video=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=1000 \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true \
	debug.sf.defer_refresh_rate_when_off=1
# FS-verity
PRODUCT_PROPERTY_OVERRIDES += ro.apk_verity.mode=2

# Recovery is enabled, logging is disabled
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.disable_hw_recovery_dump=1

# Enable power async mode
PRODUCT_PROPERTY_OVERRIDES += vendor.display.enable_async_powermode=1
# }}}

# DPM {{{
PRODUCT_PROPERTY_OVERRIDES += persist.vendor.dpmhalservice.enable=1
PRODUCT_SYSTEM_EXT_PROPERTIES += persist.vendor.dpm.feature=11
# }}}

# DRM {{{
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
# }}}

# FRP {{{
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp
# }}}

# IMS {{{
PRODUCT_PRODUCT_PROPERTIES += \
    ro.qcom.ims.use_moto_vt_ext=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ims.playout_delay=50 \
    persist.vendor.ims.cam_sensor_delay=20 \
    persist.vendor.ims.display_delay=40 \
# }}}

# Keymaster {{{
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.gatekeeper.disable_spu=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.volume.filenames_mode = "aes-256-cts" \
    ro.crypto.dm_default_key.options_format.version = 2 \
    ro.crypto.volume.metadata.method=dm-default-key
# }}}

# LMK {{{
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.swap_free_low_percentage=10 \
    ro.lmk.swap_util_max=90 \
    ro.lmk.thrashing_limit=50 \
    ro.lmk.thrashing_limit_decay=25 \
    ro.lmk.psi_complete_stall_ms=80 \
    ro.lmk.psi_partial_stall_ms=50
# }}}

# Media {{{
# Create input surface on the framework side
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.c2inputsurface=-1

# Disable OMX
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.media.omx=0

# Media Performance Class 11
PRODUCT_PROPERTY_OVERRIDES += \
    ro.odm.build.media_performance_class=30
# }}}

# Perf {{{
#Property to enable/disable PASR
PRODUCT_PROPERTY_OVERRIDES += vendor.power.pasr.enabled=true
PRODUCT_PROPERTY_OVERRIDES += vendor.pasr.activemode.enabled=true

#target specific runtime prop for qspm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qspm.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so
# }}}

# RIL {{{
# Vendor property to enable advanced network scanning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.sys.radio.force_lte_ca=true \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.rat_on=combine

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.radio.start_ota_daemon=0 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.force_get_pref=1 \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.msgtunnel.start=true \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.sw_mbn_update=0 \
    persist.vendor.radio.sar_sensor=1 \
    debug.sdm.support_writeback=0 \
    persist.vendor.radio.fi_supported=0 \
    persist.radio.vendor.NO_STAPA=1 \
    persist.radio.vendor.VT_HYBRID_ENABLE=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    ro.vendor.radio.imei.sv=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.flexmap_type=none \
    persist.vendor.radio.enable_temp_dds=true
# }}}

# Sensors {{{
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.sync_request=true \
    persist.vendor.sensors.allow_non_default_discovery=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.glance_approach=false
# }}}

# USB {{{
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.use_gadget_hal=0
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.rndis.func.name=gsi
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.rmnet.func.name=gsi
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.rmnet.inst.name=rmnet
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.dpl.inst.name=dpl
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.qdss.inst.name=qdss
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.diag.func.name=diag
PRODUCT_PROPERTY_OVERRIDES += vendor.usb.use_ffs_mtp=0
# }}}

# Radio VoNR Calling
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.is_vonr_enabled_0=true \
    persist.radio.is_vonr_enabled_1=true

# Misc {{{
# Enable incremental FS feature
PRODUCT_PROPERTY_OVERRIDES += ro.incremental.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=QTI

PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.model=SM8250

# privapp-permissions whitelisting (To Fix CTS :privappPermissionsMustBeEnforced)
PRODUCT_PROPERTY_OVERRIDES += ro.control_privapp_permissions=enforce

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# Target specific Netflix custom property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q8250-19134-1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE \
    vendor.build.customerid=retcn \
    ro.vendor.mot.factory=false

# ZRAM writeback {{{
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=1440 \
    ro.zram.periodic_wb_delay_hours=24
# }}}

# Enable zygote critical window.
PRODUCT_PROPERTY_OVERRIDES += \
    zygote.critical_window.minute=10
# }}}

# vim:fdm=marker
