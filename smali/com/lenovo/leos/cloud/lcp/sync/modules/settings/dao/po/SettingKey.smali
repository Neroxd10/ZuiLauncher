.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;"
    }
.end annotation


# static fields
.field public static final enum accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field private static final synthetic c:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum sideKeyBacklight:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "wifiOn"

    const/4 v2, 0x0

    const-string v3, "wifi_on"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothOn"

    const-string v3, "bluetooth_on"

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothDiscoverability"

    const/4 v3, 0x2

    const-string v5, "bluetooth_discoverability"

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothDiscoverabilityTimeout"

    const/4 v5, 0x3

    const-string v6, "bluetooth_discoverability_timeout"

    invoke-direct {v0, v1, v5, v6, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "ringtone"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v1, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "ringtone2"

    const-string v8, "ringtone_2"

    invoke-direct {v0, v1, v7, v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smsNotifiSound"

    const/4 v8, 0x6

    const-string v9, "sms_notifi_sound"

    invoke-direct {v0, v1, v8, v9, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeMusic"

    const/4 v9, 0x7

    const-string v10, "volume_music"

    invoke-direct {v0, v1, v9, v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeRing"

    const/16 v10, 0x8

    const-string v11, "volume_ring"

    invoke-direct {v0, v1, v10, v11, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeSystem"

    const/16 v11, 0x9

    const-string v12, "volume_system"

    invoke-direct {v0, v1, v11, v12, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeVoice"

    const/16 v12, 0xa

    const-string v13, "volume_voice"

    invoke-direct {v0, v1, v12, v13, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeNotification"

    const/16 v13, 0xb

    const-string v14, "volume_notification"

    invoke-direct {v0, v1, v13, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeBluetoothSco"

    const/16 v14, 0xc

    const-string v15, "volume_bluetooth_sco"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeAlarm"

    const/16 v15, 0xd

    const-string v14, "volume_alarm"

    invoke-direct {v0, v1, v15, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "accelerometerRotation"

    const/16 v14, 0xe

    const-string v15, "accelerometer_rotation"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "screenBrightness"

    const/16 v15, 0xf

    const-string v14, "screen_brightness"

    invoke-direct {v0, v1, v15, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "mtkAudioprofileActive"

    const/16 v14, 0x10

    const-string v15, "mtk_audioprofile_active"

    invoke-direct {v0, v1, v14, v15, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "vibrateWhenRinging"

    const/16 v15, 0x11

    const-string v14, "vibrate_when_ringing"

    invoke-direct {v0, v1, v15, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smartRoll"

    const/16 v14, 0x12

    const-string v15, "smart_roll"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "wideTouch"

    const/16 v15, 0x13

    const-string v14, "wide_touch"

    invoke-direct {v0, v1, v15, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "swingLockEnabled"

    const/16 v14, 0x14

    const-string v15, "swing_lock_enabled"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smartCallAnswer"

    const/16 v15, 0x15

    const-string v14, "smart_call_answer"

    invoke-direct {v0, v1, v15, v14, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "levoiceEnableHome"

    const/16 v14, 0x16

    const-string v15, "levoice_enable_home"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "levoiceEnablePower"

    const/16 v14, 0x17

    const-string v15, "levoice_enable_power"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "sideKeyBacklight"

    const/16 v14, 0x18

    const-string v15, "side_key_backlight"

    invoke-direct {v0, v1, v14, v15, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->sideKeyBacklight:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v1, 0x19

    new-array v1, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    sget-object v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v14, v1, v2

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v4

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v8

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v9

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v10

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v11

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v12

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v1, v13

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->c:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->a:Ljava/lang/String;

    iput p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->c:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->b:I

    return p0
.end method
