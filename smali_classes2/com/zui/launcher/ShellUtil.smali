.class public Lcom/zui/launcher/ShellUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/ShellUtil$a;
    }
.end annotation


# static fields
.field public static final FAILED_OTHER:I = -0x3e7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/zui/launcher/ShellUtil$a;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_16

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_1f

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "sh"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "exit\n"

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception v6

    move-object v8, p1

    move-object p1, p0

    move-object p0, v6

    move-object v6, v5

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v8, p1

    move-object p1, p0

    move-object p0, v6

    move-object v6, v5

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v5, v0

    goto/16 :goto_9

    :catch_2
    move-exception v5

    move-object v6, v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    :goto_4
    move-object v5, v4

    goto :goto_6

    :catch_3
    move-exception v5

    move-object v6, v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    :goto_5
    move-object v5, v4

    goto :goto_7

    :catch_4
    move-exception v4

    move-object v5, v0

    move-object v6, v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v4

    :goto_6
    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v8

    goto/16 :goto_e

    :catch_5
    move-exception v4

    move-object v5, v0

    move-object v6, v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v4

    :goto_7
    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v8

    goto/16 :goto_13

    :catch_6
    move-exception p1

    move-object v5, v0

    move-object v6, v5

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v6

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto/16 :goto_e

    :catch_7
    move-exception p1

    move-object v5, v0

    move-object v6, v5

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v6

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto/16 :goto_13

    :cond_4
    move-object p0, v0

    move-object p1, p0

    move-object v4, p1

    move-object v5, v4

    :cond_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_18

    :catchall_2
    move-exception p0

    move-object v4, v0

    move-object v5, v4

    :goto_9
    move-object v0, v3

    goto/16 :goto_1b

    :catch_9
    move-exception p0

    move-object p1, v0

    move-object v5, p1

    move-object v6, v5

    move-object v4, v3

    goto :goto_a

    :catch_a
    move-exception p0

    move-object p1, v0

    move-object v5, p1

    move-object v6, v5

    move-object v4, v3

    goto :goto_b

    :catchall_3
    move-exception p0

    move-object v4, v0

    goto :goto_c

    :catch_b
    move-exception p0

    move-object p1, v0

    move-object v4, p1

    move-object v5, v4

    move-object v6, v5

    :goto_a
    move-object v3, v2

    goto :goto_d

    :catch_c
    move-exception p0

    move-object p1, v0

    move-object v4, p1

    move-object v5, v4

    move-object v6, v5

    :goto_b
    move-object v3, v2

    goto :goto_12

    :catchall_4
    move-exception p0

    move-object v2, v0

    move-object v4, v2

    :goto_c
    move-object v5, v4

    goto/16 :goto_1b

    :catch_d
    move-exception p0

    move-object p1, v0

    move-object v3, p1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_d
    move v2, v1

    move-object v1, v6

    :goto_e
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_f

    :catch_e
    move-exception p0

    goto :goto_10

    :cond_8
    :goto_f
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_11

    :goto_10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_11
    if-eqz v3, :cond_e

    goto :goto_17

    :catch_f
    move-exception p0

    move-object p1, v0

    move-object v3, p1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_12
    move v2, v1

    move-object v1, v6

    :goto_13
    :try_start_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v4, :cond_b

    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_14

    :catch_10
    move-exception p0

    goto :goto_15

    :cond_b
    :goto_14
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_16

    :goto_15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_16
    if-eqz v3, :cond_e

    :goto_17
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_e
    move-object p0, p1

    move-object p1, v1

    move v1, v2

    :cond_f
    :goto_18
    new-instance v2, Lcom/zui/launcher/ShellUtil$a;

    if-nez p0, :cond_10

    move-object p0, v0

    goto :goto_19

    :cond_10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_19
    if-nez p1, :cond_11

    goto :goto_1a

    :cond_11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-direct {v2, v1, p0, v0}, Lcom/zui/launcher/ShellUtil$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_5
    move-exception p0

    move-object v2, v3

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    :goto_1b
    if-eqz v0, :cond_12

    :try_start_c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1c

    :catch_11
    move-exception p1

    goto :goto_1d

    :cond_12
    :goto_1c
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_1e

    :goto_1d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_1e
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_15
    throw p0

    :cond_16
    :goto_1f
    new-instance p0, Lcom/zui/launcher/ShellUtil$a;

    invoke-direct {p0, v1, v0, v0}, Lcom/zui/launcher/ShellUtil$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static installSilent(Ljava/lang/String;Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;)I
    .locals 6

    const/4 v0, -0x3

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\ "

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    new-array p1, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p1, p0}, Lcom/zui/launcher/ShellUtil;->execCommand([Ljava/lang/String;Z)Lcom/zui/launcher/ShellUtil$a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------installSilent successMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/zui/launcher/ShellUtil$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ErrorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/zui/launcher/ShellUtil$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/zui/launcher/ShellUtil$a;->a:Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return p0

    :cond_4
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const/16 v1, -0x3e7

    if-nez p0, :cond_5

    return v1

    :cond_5
    const-string v2, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, -0x2

    return p0

    :cond_7
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, -0x4

    return p0

    :cond_9
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, -0x5

    return p0

    :cond_a
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, -0x6

    return p0

    :cond_b
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, -0x7

    return p0

    :cond_c
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, -0x8

    return p0

    :cond_d
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, -0x9

    return p0

    :cond_e
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, -0xa

    return p0

    :cond_f
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, -0xb

    return p0

    :cond_10
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, -0xc

    return p0

    :cond_11
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, -0xd

    return p0

    :cond_12
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, -0xe

    return p0

    :cond_13
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, -0xf

    return p0

    :cond_14
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, -0x10

    return p0

    :cond_15
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, -0x11

    return p0

    :cond_16
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/16 p0, -0x12

    return p0

    :cond_17
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/16 p0, -0x13

    return p0

    :cond_18
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, -0x14

    return p0

    :cond_19
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, -0x15

    return p0

    :cond_1a
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, -0x16

    return p0

    :cond_1b
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/16 p0, -0x17

    return p0

    :cond_1c
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, -0x18

    return p0

    :cond_1d
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/16 p0, -0x64

    return p0

    :cond_1e
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, -0x65

    return p0

    :cond_1f
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/16 p0, -0x66

    return p0

    :cond_20
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/16 p0, -0x67

    return p0

    :cond_21
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/16 p0, -0x68

    return p0

    :cond_22
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/16 p0, -0x69

    return p0

    :cond_23
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/16 p0, -0x6a

    return p0

    :cond_24
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/16 p0, -0x6b

    return p0

    :cond_25
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/16 p0, -0x6c

    return p0

    :cond_26
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/16 p0, -0x6d

    return p0

    :cond_27
    iget-object p0, p1, Lcom/zui/launcher/ShellUtil$a;->b:Ljava/lang/String;

    const-string p1, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/16 p0, -0x6e

    return p0

    :cond_28
    return v1

    :cond_29
    :goto_0
    return v0
.end method
