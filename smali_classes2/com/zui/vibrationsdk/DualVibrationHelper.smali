.class public Lcom/zui/vibrationsdk/DualVibrationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DUAL_VIBRATOR_ALL:I = 0x2

.field public static final DUAL_VIBRATOR_MAIN:I = 0x0

.field public static final DUAL_VIBRATOR_NO_REPEAT:I = -0x1

.field public static final DUAL_VIBRATOR_REPEAT:I = 0x0

.field public static final DUAL_VIBRATOR_SUB:I = 0x1

.field public static final EFFECT_APP_INTO_FOLDER:I = 0x2f

.field public static final EFFECT_APP_LONG_PRESSED:I = 0x2e

.field public static final EFFECT_CAMERA_SLIDER:I = 0x19

.field public static final EFFECT_CAMERA_ZOOM:I = 0x18

.field public static final EFFECT_CLOCK_SET:I = 0x1b

.field public static final EFFECT_COMPASS_CALIBRATION:I = 0x17

.field public static final EFFECT_COMPASS_DIRECTION:I = 0x16

.field public static final EFFECT_CONTACTS_LIST:I = 0x1d

.field public static final EFFECT_CONTROLCENTER_LONG_PRESS:I = 0x30

.field public static final EFFECT_DEFAULT_1:I = 0x7

.field public static final EFFECT_DEFAULT_10:I = 0x10

.field public static final EFFECT_DEFAULT_11:I = 0x11

.field public static final EFFECT_DEFAULT_12:I = 0x12

.field public static final EFFECT_DEFAULT_13:I = 0x13

.field public static final EFFECT_DEFAULT_14:I = 0x14

.field public static final EFFECT_DEFAULT_2:I = 0x8

.field public static final EFFECT_DEFAULT_3:I = 0x9

.field public static final EFFECT_DEFAULT_4:I = 0xa

.field public static final EFFECT_DEFAULT_5:I = 0xb

.field public static final EFFECT_DEFAULT_6:I = 0xc

.field public static final EFFECT_DEFAULT_7:I = 0xd

.field public static final EFFECT_DEFAULT_8:I = 0xe

.field public static final EFFECT_DEFAULT_9:I = 0xf

.field public static final EFFECT_DEFAULT_NO_EFFECT:I = 0x0

.field public static final EFFECT_DEFAULT_NO_TIME:I = 0x0

.field public static final EFFECT_DOUBLE_VIB_1:I = 0x4

.field public static final EFFECT_ELASTIC:I = 0x6

.field public static final EFFECT_FACE_IDENTIFY:I = 0x2a

.field public static final EFFECT_FINGER_IDENTIFY:I = 0x15

.field public static final EFFECT_GALLERY_SELECTE:I = 0x20

.field public static final EFFECT_INPUT_LANSCAPE:I = 0x32

.field public static final EFFECT_INPUT_PORTRAIT:I = 0x31

.field public static final EFFECT_KEY_DEFAULT_1:I = 0x3

.field public static final EFFECT_LONG_VIB_1:I = 0x2

.field public static final EFFECT_MACHINE_KEY_1:I = 0x5

.field public static final EFFECT_PRESS_CALCULATE:I = 0x28

.field public static final EFFECT_PRESS_DIALPAD:I = 0x27

.field public static final EFFECT_PRESS_NAVIGATION_KEY:I = 0x2d

.field public static final EFFECT_PRESS_PASSWORD:I = 0x29

.field public static final EFFECT_PRESS_PASSWORD_FAIL:I = 0x2b

.field public static final EFFECT_PRESS_PATTERN_PASSWORD:I = 0x2c

.field public static final EFFECT_SETTINGS_DEMONSTRATION:I = 0x1c

.field public static final EFFECT_SETTINGS_INFINITE_BAR:I = 0x1f

.field public static final EFFECT_SETTINGS_SCALE_BAR:I = 0x1e

.field public static final EFFECT_SHORT_VIB_1:I = 0x1

.field public static final EFFECT_SYSTEMUI_RECENTS_FUNCTION:I = 0x1a

.field public static final EFFECT_UTOUCH_BACK:I = 0x21

.field public static final EFFECT_UTOUCH_HOME:I = 0x22

.field public static final EFFECT_UTOUCH_RECTENTS:I = 0x23

.field public static final EFFECT_UTOUCH_SWTICH:I = 0x24

.field public static final EFFECT_VOLUME_MUTE_ALL:I = 0x25

.field public static final EFFECT_VOLUME_PLUS:I = 0x26

.field public static final FEEDBACK_SWITCH_CARE:Z = false

.field public static final FEEDBACK_SWITCH_NOT_CARE:Z = true

.field public static final VIBRATION_EFFECT_31:I = 0x33

.field public static final VIBRATION_EFFECT_32:I = 0x34

.field public static final VIBRATION_EFFECT_33:I = 0x35

.field public static final VIBRATION_EFFECT_34:I = 0x36

.field public static final VIBRATION_EFFECT_35:I = 0x37

.field public static final VIBRATION_EFFECT_36:I = 0x38

.field public static final VIBRATION_EFFECT_37:I = 0x39

.field public static final VIBRATION_EFFECT_38:I = 0x3a

.field public static final VIBRATION_EFFECT_39:I = 0x3b

.field public static final VIBRATION_EFFECT_40:I = 0x3c

.field public static final VIBRATION_EFFECT_41:I = 0x3d

.field public static final VIBRATION_EFFECT_42:I = 0x3e

.field public static final VIBRATION_EFFECT_43:I = 0x3f

.field public static final VIBRATION_EFFECT_44:I = 0x40

.field public static final VIBRATION_EFFECT_45:I = 0x41

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Z

.field private d:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string v0, "com.zui.dual.vibrator"

    sput-object v0, Lcom/zui/vibrationsdk/DualVibrationHelper;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->c:Z

    iput-object p1, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->b:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/zui/vibrationsdk/DualVibrationHelper;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->c:Z

    iget-object p1, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->a:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->d:Landroid/os/Vibrator;

    return-void
.end method

.method private a([JIZ)Z
    .locals 3

    iget-boolean v0, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v2, "haptic_feedback_enabled"

    invoke-static {p3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->d:Landroid/os/Vibrator;

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public cancelVibration()V
    .locals 0

    iget-object p0, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->d:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public hasDualVibrator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/vibrationsdk/DualVibrationHelper;->c:Z

    return p0
.end method

.method public startVibrationOrFail(IIIIIIIIZ)Z
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    int-to-long v1, p1

    const/4 p1, 0x1

    aput-wide v1, v0, p1

    int-to-long p1, p2

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    int-to-long p1, p3

    const/4 p3, 0x3

    aput-wide p1, v0, p3

    int-to-long p1, p4

    const/4 p3, 0x4

    aput-wide p1, v0, p3

    int-to-long p1, p5

    const/4 p3, 0x5

    aput-wide p1, v0, p3

    int-to-long p1, p6

    const/4 p3, 0x6

    aput-wide p1, v0, p3

    int-to-long p1, p7

    const/4 p3, 0x7

    aput-wide p1, v0, p3

    invoke-direct {p0, v0, p8, p9}, Lcom/zui/vibrationsdk/DualVibrationHelper;->a([JIZ)Z

    move-result p0

    return p0
.end method

.method public startVibrationOrFail(IIIIIIZ)Z
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    int-to-long v1, p1

    const/4 p1, 0x1

    aput-wide v1, v0, p1

    int-to-long p1, p2

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    int-to-long p1, p3

    const/4 p3, 0x3

    aput-wide p1, v0, p3

    int-to-long p1, p4

    const/4 p3, 0x4

    aput-wide p1, v0, p3

    int-to-long p1, p5

    const/4 p3, 0x5

    aput-wide p1, v0, p3

    invoke-direct {p0, v0, p6, p7}, Lcom/zui/vibrationsdk/DualVibrationHelper;->a([JIZ)Z

    move-result p0

    return p0
.end method
