.class public Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/view/RemoteAnimationDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->a:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method


# virtual methods
.method a()Landroid/view/RemoteAnimationDefinition;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->a:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method public addRemoteAnimation(IILcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->a:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {p3}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->a()Landroid/view/RemoteAnimationAdapter;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method

.method public addRemoteAnimation(ILcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->a:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->a()Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method
