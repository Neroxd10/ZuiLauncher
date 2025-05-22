.class public Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CPU_CLOSE_SERVICE:Ljava/lang/String; = "com.zui.launcher.cpu.close_service"

.field public static final CPU_DATA_KEY:Ljava/lang/String; = "cpu_data_key"

.field public static final SEND_CPU_DATA:Ljava/lang/String; = "com.zui.launcher.cpu.send_data"

.field private static a:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills; = null

.field private static b:Ljava/lang/String; = "CpuUtills"

.field private static c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/Double;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/io/File;)I
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p0

    :catch_3
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v2, p0

    goto :goto_6

    :catch_6
    move-exception p1

    move-object v2, p0

    goto :goto_b

    :catchall_1
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :catch_7
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_8
    move-exception p1

    move-object v1, p0

    goto :goto_a

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    :goto_3
    move-object v2, v1

    :goto_4
    move-object p0, p1

    goto :goto_10

    :catch_9
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    :goto_5
    move-object v2, v1

    :goto_6
    move-object p0, p1

    :goto_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "readPropertyNum  IOException -->"

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuPrintLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_8

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_8
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_9

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_9
    if-eqz v0, :cond_4

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_f

    :catch_c
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    :goto_a
    move-object v2, v1

    :goto_b
    move-object p0, p1

    :goto_c
    :try_start_b
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p0, "readPropertyNum  FileNotFoundException -->"

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuPrintLog(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v2, :cond_2

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_d

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_d
    if-eqz v1, :cond_3

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_e

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_e
    if-eqz v0, :cond_4

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_f

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_f
    const/4 p0, 0x0

    return p0

    :catchall_3
    move-exception p0

    :goto_10
    if-eqz v2, :cond_5

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_11
    if-eqz v1, :cond_6

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_12
    if-eqz v0, :cond_7

    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_13
    throw p0
.end method

.method public static cpuPrintLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->a:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->a:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->a:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    return-object v0
.end method


# virtual methods
.method public calculateData()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuGHzCur()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->cpuGHzMax()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->gpuFreqCur()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->gpuFreqMax()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v4, v8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public cpuGHzCur()Ljava/lang/Double;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpu7/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->c(Ljava/io/File;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public cpuGHzMax()Ljava/lang/Double;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpu7/cpufreq/cpuinfo_max_freq"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->c(Ljava/io/File;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public gpuFreqCur()Ljava/lang/Double;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/kgsl/kgsl-3d0/devfreq/cur_freq"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->c(Ljava/io/File;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public gpuFreqMax()Ljava/lang/Double;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/kgsl/kgsl-3d0/devfreq/max_freq"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->c(Ljava/io/File;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public obtainCpuData(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->calculateData()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.cpu.send_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cpu_data_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public recyclerCpuUtils()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->a:Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    return-void
.end method
