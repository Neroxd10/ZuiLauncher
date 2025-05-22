.class final Lcom/amap/api/offlineservice/AMapPermissionActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/offlineservice/AMapPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/offlineservice/AMapPermissionActivity;


# direct methods
.method constructor <init>(Lcom/amap/api/offlineservice/AMapPermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/offlineservice/AMapPermissionActivity$a;->a:Lcom/amap/api/offlineservice/AMapPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/offlineservice/AMapPermissionActivity$a;->a:Lcom/amap/api/offlineservice/AMapPermissionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
