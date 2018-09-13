# System.prop for msm8996

PRODUCT_BUILD_PROP_OVERRIDES += \
	rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3= \
	ril.subscription.types=NV,RUIM \
	DEVICE_PROVISIONED=1	

# Start in global mode
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.telephony.default_network=10

PRODUCT_BUILD_PROP_OVERRIDES += \
	debug.sf.enable_hwc_vds=1 \
	debug.sf.hw=1 \
	debug.sf.latch_unsignaled=1 \
	debug.egl.hw=1 \
	debug.gralloc.enable_fb_ubwc=1 \
	dalvik.vm.heapsize=36m \
	dev.pm.dyn_samplingrate=1 \
	persist.demo.hdmirotationlock=false \
	debug.sf.recomputecrop=0

# Property to specify the number of frames to skip before setting hint
PRODUCT_BUILD_PROP_OVERRIDES += \
	sdm.perf_hint_window=50

# Disable Skip Validate
PRODUCT_BUILD_PROP_OVERRIDES += \
	sdm.debug.disable_skip_validate=1

# Display Properties as per treble compliance
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.gralloc.enable_fb_ubwc=1 \
	vendor.display.disable_skip_validate=1 \
	vendor.display.perf_hint_window=50

# Property to disable wfd ubwc
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.gralloc.disable_wb_ubwc=1

# Property to enable display default color mode
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.display.enable_default_color_mode=1

# System props for the cne module
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.vendor.cne.feature=1

# System prop for enabling/disabling Android XLAT
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.net.doxlat=false

# System props for the MM modules
PRODUCT_BUILD_PROP_OVERRIDES += \
	media.stagefright.enable-player=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-scan=true \
	mmp.enable.3g2=true \
	media.aac_51_output_enabled=true \
	media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
	mm.enable.smoothstreaming=true

# Minimum duration for offload playback in secs
PRODUCT_BUILD_PROP_OVERRIDES += \
	audio.offload.min.duration.secs=30

# Enable offload audio video playback by default
PRODUCT_BUILD_PROP_OVERRIDES += \
	audio.offload.video=true

# Enable music through deep buffer
PRODUCT_BUILD_PROP_OVERRIDES += \
	audio.deep_buffer.media=true

# Set AudioFlinger client heap size
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.af.client_heap_size_kbyte=7168

# Reduce client buffer size for fast audio output tracks
PRODUCT_BUILD_PROP_OVERRIDES += \
	af.fast_track_multiplier=1

# Codecs
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.mm.enable.qcom_parser=1048575 \
	persist.mm.enable.prefetch=true

# Additional i/p buffer in case of encoder DCVS
PRODUCT_BUILD_PROP_OVERRIDES += \
	vidc.enc.dcvs.extra-buff-count=2

# Disable PQ feature by default
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.vidc.enc.disable.pq=true

# System props for the data modules
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.vendor.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=true \
	persist.vendor.data.mode=concurrent

# System prop for Bluetooth SOC type
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.bluetooth.soc=rome \
	ro.bluetooth.library_name=libbluetooth_qti.so \
	persist.vendor.btstack.enable.splita2dp=false

# System props for time-services
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.timed.enable=true

# System property for maximum number of HFP client connections
PRODUCT_BUILD_PROP_OVERRIDES += \
	bt.max.hfpclient.connections=1

# System property for cabl
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.qualcomm.cabl=2 \
	ro.vendor.display.cabl=2

# System prop to turn on CdmaLTEPhone always
PRODUCT_BUILD_PROP_OVERRIDES += \
	telephony.lteOnCdmaDevice=1

# Simulate sdcard on /data/media
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.fuse_sdcard=true

# System prop for RmNet Data
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.rmnet.data.enable=true \
	persist.data.wda.enable=true \
	persist.data.df.dl_mode=5 \
	persist.data.df.ul_mode=5 \
	persist.data.df.agg.dl_pkt=10 \
	persist.data.df.agg.dl_size=4096 \
	persist.data.df.mux_count=8 \
	persist.data.df.iwlan_mux=9 \
	persist.data.df.dev_name=rmnet_usb0

# Property to enable user to access Google WFD settings
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.debug.wfd.enable=1

# Property to choose between virtual/external wfd display
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.sys.wfd.virtual=0

# System prop for NFC DT
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.nfc.port=I2C

# Property to enable WFD WL solution
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.vendor.wl_library=libqti-wl.so

# Property for vendor specific library
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.vendor.gt_library=libqti-gt.so \
	ro.vendor.at_library=libqti-at.so \
	sys.games.gt.prof=1

# Hwui properties
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.r_buffer_cache_size=8 \
	ro.hwui.path_cache_size=32 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024 

# Default usb composition
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.sys.usb.config=diag,serial_cdev,serial_tty,rmnet_ipa,mass_storage,adb

# Property to enable VDS WFD solution
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.hwc.enable_vds=1

# Enable stm events
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.debug.coresight.config=stm-events

# Property to enable fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.qfp=false

# Default pd_enable value
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.sys.pd_enable=0

# Disable rotator split feature
PRODUCT_BUILD_PROP_OVERRIDES += \
	sdm.debug.disable_rotator_split=1

# Increase cached app limit
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.vendor.qti.sys.fw.bg_apps_limit=60

# Camera fullscreen doesn't show navigation bar
PRODUCT_BUILD_PROP_OVERRIDES += \
	Camera.no_navigation_bar=true

# Property for game detection feature
PRODUCT_BUILD_PROP_OVERRIDES += \
	vendor.debug.enable.gamed=0

# Properties for limiting preview size in camera
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.vendor.camera.display.umax=1920x1080 \
	persist.vendor.camera.display.lmax=1280x720

# Disable face beautification
PRODUCT_BUILD_PROP_OVERRIDES += \
	persist.ts.postmakeup=false \
	persist.ts.rtmakeup=false

# Enable device orientation sensor
PRODUCT_BUILD_PROP_OVERRIDES += \
	ro.qti.sensors.dev_ori=false \
	ro.qti.sensors.pmd=false \
	ro.qti.sensors.sta_detect=false \
	ro.qti.sensors.mot_detect=false

# Add soft home, back and multitask keys
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

# system prop for opengles version
#
# 196608 is decimal for 0x30000 to report version 3
# 196609 is decimal for 0x30001 to report version 3.1
# 196610 is decimal for 0x30002 to report version 3.2
PRODUCT_PROPERTY_OVERRIDES  += \
	ro.opengles.version=196610

# Enable logdumpd service only for non-perf bootimage
ifeq ($(findstring perf,$(KERNEL_DEFCONFIG)),)
    ifeq ($(TARGET_BUILD_VARIANT),user)
        PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
		ro.logdumpd.enabled=0
    endif
else
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
	ro.logdumpd.enabled=0
endif

# system prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.qcom.bluetooth.soc=rome

# Set this true as ROME which is programmed
# as embedded wipower mode by deafult
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bluetooth.emb_wp_mode=true \
	ro.vendor.bluetooth.emb_wp_mode=true

# System prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.wipower=true \
    ro.vendor.bluetooth.wipower=true

# Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=OnePlus/OnePlus3/OnePlus3:8.0.0/OPR1.170623.032/1808161403:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
	camera.disable_zsl_mode=1

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so

# Override heap growth limit due to high display density on device
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapgrowthlimit=256m

ifeq ($(strip $(TARGET_USES_GPQESE)),true)
	PRODUCT_PROPERTY_OVERRIDES += \
		persist.nfc.smartcard.config=SIM1,eSE1
else
	PRODUCT_PROPERTY_OVERRIDES += \
		persist.nfc.smartcard.config=SIM1
endif
