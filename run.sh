#!/bin/bash

. build/envsetup.sh

# art
repopick 256444 # Don't fail dual map if memfd isn't supported

# bionic
repopick 256150 # bionic: Use legacy pthread_mutex_init() behavior on pre-P API levels
repopick 256151 # Actually restore pre-P mutex behavior

# bootable/recovery
repopick 255990 # recovery: Remove HOST_OS guard for f2fs tools
repopick 255830 # Make adb use a custom prop for adb root
repopick 255831 # recovery: Get a proper shell environment in recovery
repopick 255832 # recovery: ui: Default to touch enabled
repopick 255833 # recovery: ui: Minor cleanup for touch code
repopick 255992 # recovery: ui: Support hardware virtual keys
repopick 259434 # recovery: Puke out an /etc/fstab so stuff like busybox/toybox is happy
repopick 256010 # recovery: Include vendor init trigger
repopick 259546 # recovery: Allow device-specific recovery modules
repopick 259547 # recovery: Blank screen during shutdown and reboot
repopick 259720 # recovery: sdcard is data/media/0
repopick 259629 # recovery: Provide caching for sideload files
repopick 259548 # recovery: Provide sideload cancellation
repopick 259642 # recovery: Add wipe system partition option
repopick 259643 # recovery: Remove "Supported API" message
repopick 259644 # recovery: Enable the menu for User builds
repopick 259645 # recovery: init: mount pstore fs
repopick 259646 # recovery: Expose reboot to recovery option
repopick 259647 # recovery: Only show tests in eng builds
repopick 259648 # recovery: Also hide rescue mode from non eng builds
repopick 259649 # recovery: Blank screen on init
repopick 255979 # recovery: symlink /sbin for script compatibility
repopick 259738 # recovery: Allow bypassing signature verification on non-release builds
repopick 259748 # recovery: Add runtime checks for A/B vs traditional updates

# build/blueprint
repopick 259301 # Make off-the-shelf order funcs public.

# external/mksh
repopick 259638 # mksh: Mark mkshrc as recovery_available

# external/tinycompress
repopick 256308 # tinycompress: Enable extended compress format

# frameworks/av
repopick 256899 # camera: Allow devices to load custom CameraParameter code
repopick 258812 # CameraService: Support hooks for motorized camera

# frameworks/native
repopick 258443 # sensorservice: Register orientation sensor if HAL doesn't provide it
repopick 258601 # sensorservice: customize sensor fusion mag filter via prop
repopick 259448 # libui: Allow invalid bits from callers conditionally

# hardware/lineage/interfaces
repopick 258215 # Initial dummy cryptfshw implementation
repopick 258828 # cryptfshw: Setup boilerplate items before actual implementation
repopick 258849 # cryptfshw: Split implementations into dlsym and ioctl
repopick 258850 # cryptfshw: ioctl: Wire up the implementation
repopick 258851 # cryptfshw: dlsym: Wire up the implementation
repopick 256420 # Initial audio amplifier HAL

# packages/apps/Contacts
repopick 256654 # Contacts: Enable support for device contact.
repopick 256655 # Place MyInfo shortcut on drawer
repopick 256656 # Place EmergencyInfo shortcut on drawer
repopick 256657 # Allow calling contacts via specific phone accounts.

# packages/apps/DeskClock
repopick 256663 # Provide upgrade path for cm-14.1 -> lineage-16.0
repopick 256664 # Make new menu entry to link to cLock widget settings.

# packages/apps/Dialer
repopick 257131 # Dialer: handle database upgrade from cm-14.1
repopick 257132 # Dialer: disable anti-falsing for call answer screen
repopick 257113 # Revert "Remove dialer sounds and vibrations settings fragments and redirect to the system sound
repopick 257114 # Add back in-call vibration features
repopick 257115 # Allow using private framework API.
repopick 257133 # Re-add dialer lookup.
repopick 257118 # Generalize the in-call vibration settings category
repopick 257119 # Add setting to enable Do Not Disturb during calls
repopick 257134 # Re-add call recording.
repopick 257121 # Allow per-call account selection.
repopick 257122 # Re-add call statistics.
repopick 257135 # Control dialer's incoming call proximity sensor check via an overlay
repopick 257136 # Dialer: AudioModeProvider: use wired route for usb headsets

# packages/apps/Email
repopick 256675 # Email: handle databases from cm-14.1
repopick 256676 # Allow account deletion.
repopick 256677 # email: support for auto-sync multiple IMAP folders
repopick 256678 # email: Add an ActionBar to the mail app's PreferenceActivity
repopick 256679 # email: support per-folder notifications
repopick 256680 # Rewrite MailboxSettings loading logic.
repopick 256681 # email: fix eas autodiscover
repopick 256682 # Implement IMAP push using IMAP IDLE.
repopick 256683 # Request battery optimization exemption if IMAP IDLE is used.
repopick 256684 # Fix crash when attempting to view EML files.
repopick 256685 # Allow download of compressed attachments.
repopick 256686 # email: fix empty body update
repopick 256687 # Improve notification coalescence algorithm.
repopick 256688 # Email: Fix the ActivityNotFoundException when click "Update now"
repopick 256689 # Email: Clean duplicated WRITE_CONTACTS permission
repopick 256690 # email: return default folder name for subfolders
repopick 256691 # email: junk icon
repopick 256692 # Search in folder specified via URI parameter, if possible.
repopick 256693 # Remove max aspect ratio.
repopick 257358 # Fix Email tests on userdebug builds.
repopick 257359 # AOSP/Email -Added TEST_MAPPING file and "LOCAL_COMPATIBILITY_SUITE := ...
repopick 257360 # Remove build-time dep on opt-datetimepicker
repopick 257361 # Revert "Revert "AOSP/Email - Changes for code to work with UnifiedEmail's ...
repopick 257362 # Revert "Revert "AOSP/Email - Bump targetSdkVersion to 28.""

# packages/apps/Exchange
repopick 257297 # Exchange: Migrate to androidx

# packages/apps/Messaging
repopick 256698 # Messaging: Implement option for swipe right to delete.
repopick 256699 # Messaging: change Avatar fontFamily to sans-serif-medium
repopick 256700 # MessageQueue: Process pending messages per subscription
repopick 256701 # Messaging: Toggable keyboard emoticons access
repopick 256702 # Fix menu item highlight color.
repopick 256704 # Messaging: bring back accent color
repopick 256705 # Messaging: Implement saved video attachments in MMS
repopick 256706 # Play an audible notification on receiving a class zero message.
repopick 256707 # Added support for video and audio mms attachments
repopick 256708 # Fixed storage permission issue for attachments
repopick 256709 # Messaging app crashes after a few MMS
repopick 256711 # Messaging: fix bad recycle on sending two mms in a row
repopick 256712 # MediaPicker: Check for NPE
repopick 256713 # Messaging: Don't crash on unsupported shared content type
repopick 256714 # Messaging: Fix crash of blocked participant list activity
repopick 256715 # Messaging: Add "Mark as read" quick action for message notifications
repopick 256716 # Allow intent shared subject or title to be mms subject
repopick 256718 # Messaging: use white nav bar
repopick 257342 # Don't build with platform certificate
repopick 257343 # Messaging: Implement per conversation channels

# packages/apps/Nfc
repopick 256814 # NFCService: Add sysprop to prevent FW download during boot with NFC off.

# packages/apps/PackageInstaller
repopick 255658 # Revert "Remove Permissions Hub."
repopick 255659 # PermissionController: Enable permission hub by default

# packages/apps/UnifiedEmail
repopick 256727 # unified email: prefer account display name to sender name
repopick 256728 # email: fix back button
repopick 256729 # unified-email: check notification support prior to create notification objects
repopick 256730 # unified-email: respect swipe user setting
repopick 256731 # email: linkify urls in plain text emails
repopick 256732 # email: do not close the input attachment buffer in Conversion#parseBodyFields
repopick 256733 # email: linkify phone numbers
repopick 256734 # Remove obsolete theme.
repopick 256735 # Don't assume that a string isn't empty
repopick 256736 # Add an ActionBar to the mail app's PreferenceActivity.
repopick 256737 # email: allow move/copy operations to more system folders
repopick 256738 # unifiedemail: junk icon
repopick 256739 # Remove mail signatures from notification text.
repopick 256740 # MimeUtility: ensure streams are always closed
repopick 256741 # Fix cut off notification sounds.
repopick 256742 # Pass selected folder to message search.
repopick 256743 # Properly close body InputStreams.
repopick 256744 # Make navigation drawer extend over status bar.
repopick 256745 # Disable animations for translucent activities.
repopick 256746 # Don't re-show search bar on query click.
repopick 257366 # Fix UnifiedEmail tests on userdebug builds.
repopick 257367 # AOSP/UnifiedEmail -  Fix improperly formatted resource strings in UnifiedEmail.
repopick 257368 # Remove build-time dep on opt-datetimepicker
repopick 257369 # Import translations. DO NOT MERGE]
repopick 257370 # Revert "Revert "AOSP/UnifiedEmail - Bumped the targetSdkVersion to 28 ...

# packages/providers/ContactsProvider
repopick 256773 # ContactsProvider: Prevent device contact being deleted.
repopick 256774 # CallLogDatabase: Try to re-run the version 5 upgrade path

# packages/providers/TelephonyProvider
repopick 256780 # TelephonyProvider: add upgrade support from cm-14.1

# packages/services/Telecomm
repopick 256161 # Telecomm: Make sensitive phone numbers not to be shown in call log history.
repopick 256265 # CallLog: Take into account multiple SIMs for sensitive numbers

# packages/services/Telephony
repopick 256792 # Telephony: Add ERI configuration for U.S. Cellular
repopick 256793 # Telephony: Support muting by RIL command
repopick 256795 # Don't start SIP service before decrypted
repopick 256797 # Allow to disable the new scan API for manual network search.

# system/bt
repopick 258857 # Increase maximum Bluetooth SBC codec bitrate for SBC HD
repopick 258858 # Explicit SBC Dual Channel (SBC HD) support

# system/netd
repopick 256959 # netd: Allow devices to force-add directly-connected routes

# system/update_engine
repopick 259363 # Move performance mode to top app

# system/vold
repopick 258131 # vold: Add Hardware FDE feature
repopick 258132 # system: vold: Remove crypto block device creation
repopick 258133 # vold: Wrapped key support for FBE
repopick 258134 # vold: Use separate flag for wrappedkey
repopick 258135 # Remove no longer relevant header file
repopick 258136 # vold: add support for clear key
repopick 258137 # Fix for CTS test CtsAppSecurityHostTestCases
repopick 258138 # vold: fix build error
repopick 258139 # vold: change to upgrade key if export fails
repopick 258141 # system: vold: fix block disk encryption to work with metadata encryption
repopick 258145 # Updates for migrated code upstream
repopick 258147 # system: vold: Close crypto block device if it was created
repopick 258148 # system: vold: pass proper extra params to load crypto device
repopick 258140 # system: vold: Use wrapped key for metadata encryption
repopick 258149 # [automerger] vold: resolve crypto device creation failure with dm-crypt skipped: 4b5c1b2db2
repopick 258150 # system: vold: Use ICE for UFS card
repopick 258151 # vold: Move QCOM HW FDE inclusion under Lineage namespace
repopick 258169 # vold: add support for more filesystems for public storage
repopick 258170 # vold: Fix fsck on public volumes
repopick 258171 # vold: Support internal storage partitions
repopick 258172 # vold: Honor mount options for ext4/f2fs partitions
repopick 258173 # vold: Mount ext4/f2fs portable storage with sdcard_posix
repopick 258174 # vold ext4/f2fs: do not use dirsync if we're mounting adopted storage
repopick 258175 # Fix the group permissions of the sdcard root.
repopick 258176 # vold: skip first disk change when converting MBR to GPT
repopick 258177 # vold: Allow reset after shutdown
repopick 258178 # vold: Accept Linux GPT partitions on external SD cards
repopick 258179 # Add "changepw" command to vdc.

# packages/apps/Bluetooth
repopick 258860 # Assume optional codecs are supported if were supported previously
repopick 258859 # SBC Dual Channel (SBC HD Audio) support

# vendor/qcom/opensource/fm-commonsys
repopick 260194 # Revert "FM: Use btconfigstore interface to fetch vendor features"
repopick 260195 # Revert "Fm: Use btconfigstore interface to fetch vendor features"
repopick 260422 # jni: fix calibration data path for legacy fm_qsoc_patches
repopick 260423 # jni: Skip loading FM firmware if requested
repopick 260429 # jni: Remove unused variables
repopick 260431 # jni: Resolve FM_DEVICE_PATH R/O open flag
repopick 260432 # jni: Ignore unused parameters from APIs
repopick 260434 # jni: Resolve equality comparisons with extraneous parentheses
repopick 260435 # jni: Resolve V4L2_CID_AUDIO_MUTE redefinitions
repopick 260436 # jni: Resolve -Wwritable-strings warnings in helium FW library variables
repopick 260437 # Allow library to be used by apps directly
repopick 260438 # FM: Break bootclasspath dependency
repopick 260439 # FM: Re-vamp UI
repopick 260440 # FM: Restore seek arrows
repopick 260441 # FM: Make default country an overlay
repopick 260442 # FM: Re-add RDS fields to UI
repopick 260443 # FM: Scanned frequencies are saved in ascending ordering
repopick 260444 # FM: Call unregister in onPause
repopick 260445 # FM: Switch file extension to aac
repopick 260446 # FM: Add property to force use internal antenna
repopick 260447 # FM: Cleanup resources
repopick 260448 # FM: add Indonesia
repopick 260449 # FM: materialize
repopick 260450 # FM: retune last frequency when resume after call
repopick 260451 # FM: Store tag num/value in sequence
repopick 260452 # FM: reenable radio text visibility after station info updated
repopick 260453 # FM: Launch station list automatically after scan
repopick 260454 # FM: Fix status text to reflect when FM is enabled.
repopick 260455 # FM: The collect channel disappear when quit FM
repopick 260456 # FM: Ensure scan state is kept in sync
repopick 260457 # FM: Keep track of scanned frequencies in service
repopick 260458 # FM: Select band based on country
repopick 260459 # FM: improved band selection
repopick 260460 # FM: Localization of band types
repopick 260461 # FM: Fix settings UI bugs
repopick 260462 # FM: Fix headphone icon
repopick 260463 # FM: Update India bands
repopick 260464 # FM: Convert regional band arrays to string references
repopick 260465 # FM: Fix KHz->kHz
repopick 260487 # FM: Revamp notifications
repopick 260488 # FM: adaptive icon
repopick 260489 # fm: Drop unnecessary dependencies
repopick 260490 # FM: Remove unnecessary TARGET_BOARD_PLATFORM guard

#hardware/qcom-caf/sm8150/display
repopick 262182 # display: Use project pathmap
repopick 262183 # Don't build lights module if vendor supplies it
repopick 262184 # Add C2D_COLOR_FORMAT_420_TP10 to C2D_YUV_FORMAT
repopick 262185 # Add C2D_FORMAT_BT601_FULLRANGE to C2D_FORMAT_MODE
repopick 262186 # display-hals: Expose c2d2.h even if TARGET_DISABLE_DISPLAY is set
repopick 262187 # display-hals: Allow building libdisplayconfig

#hardware/qcom-caf/sm8150/media
repopick 262180 # media: Use project pathmap
repopick 262158 # media: libOmxSw encoders require prop headers :(
repopick 262179 # media: Depend on display_headers not display_intf_headers
repopick 262188 # media: Exclude libplatformconfig from OSS builds

#hardware/qcom-caf/sm8150/audio
repopick 262309 # audio: Use direct project pathmap
repopick 262310 # audio: Skip libhdmipassthru on OSS builds
repopick 262311 # audio: Add missing includes

#hardware/qcom-caf/common
repopick 261271 # fwk-detect: Relocate from vendor/qcom-opensource/core-utils