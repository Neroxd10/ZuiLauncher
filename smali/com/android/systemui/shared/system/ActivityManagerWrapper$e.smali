.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.lenovo.performancecenter.provider.querywhitelist/updateWhitelistApp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    iget-object v3, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "pkgName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    sget-object p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mIsSavingLockedPackageMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mLockPackageNameMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActivityManagerWrapper"

    const-string p1, "savePackageNames() content://com.lenovo.performancecenter.provider.querywhitelist/updateWhitelistApp isn\'t exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
