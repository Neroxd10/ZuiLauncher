.class final Landroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field mInstance:Landroidx/fragment/app/Fragment;

.field final mMaxLifecycleState:I

.field final mRemoving:Z

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iget v0, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public instantiate(Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    iget p2, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iget p2, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    iget v0, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    aget-object p2, p2, v0

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-boolean p1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instantiated fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v1, :cond_0

    const-string v1, " fromLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v1, :cond_3

    const-string v1, " retainInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    if-eqz v1, :cond_4

    const-string v1, " removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v1, :cond_5

    const-string v1, " detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean p0, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz p0, :cond_6

    const-string p0, " hidden"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p0, p0, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
