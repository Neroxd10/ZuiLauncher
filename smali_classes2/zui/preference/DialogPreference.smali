.class public Lzui/preference/DialogPreference;
.super Landroid/preference/DialogPreference;
.source ""

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/DialogPreference$SavedState;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Lzui/app/MessageDialog$Builder;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lzui/util/PreferenceBase;

.field protected mDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/preference/DialogPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$a;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lzui/preference/DialogPreference;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$a;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/preference/DialogPreference;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$a;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/DialogPreference;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/DialogPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/DialogPreference$a;-><init>(Lzui/preference/DialogPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/DialogPreference;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/preference/DialogPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    :cond_1
    iget-object p0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private c(Landroid/preference/PreferenceManager;)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "registerOnActivityDestroyListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "can not invoke registerOnActivityDestroyListener"

    goto :goto_0

    :catch_1
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "can not assess registerOnActivityDestroyListener"

    goto :goto_0

    :catch_2
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "Do not have method registerOnActivityDestroyListener"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private d(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private e(Landroid/preference/PreferenceManager;)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "unregisterOnActivityDestroyListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "can not invoke registerOnActivityDestroyListener"

    goto :goto_0

    :catch_1
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "can not assess registerOnActivityDestroyListener"

    goto :goto_0

    :catch_2
    sget-object p0, Lzui/preference/DialogPreference;->g:Ljava/lang/String;

    const-string p1, "Do not have method registerOnActivityDestroyListener"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public getNeutralButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected needInputMethod()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/DialogPreference;->onActivityDestroy()V

    iget-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onBindView(Landroid/view/View;)V

    iget-object p1, p0, Lzui/preference/DialogPreference;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lzui/preference/DialogPreference;->b:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogLayoutResource()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    iget-object v0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onCreateView(Landroid/view/View;)V

    iget-object p1, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/preference/DialogPreference;->e(Landroid/preference/PreferenceManager;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    iget p1, p0, Lzui/preference/DialogPreference;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lzui/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lzui/preference/DialogPreference$SavedState;

    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lzui/preference/DialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lzui/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lzui/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lzui/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lzui/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lzui/preference/DialogPreference$SavedState;->a:Z

    iget-object p0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v1, Lzui/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/DialogPreference;->e:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/DialogPreference;->d:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/preference/DialogPreference;->f:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, p0, Lzui/preference/DialogPreference;->b:I

    new-instance v1, Lzui/app/MessageDialog$Builder;

    invoke-direct {v1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzui/app/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lzui/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lzui/app/MessageDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Lzui/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v1, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v1, v0}, Lzui/app/MessageDialog$Builder;->setView(Landroid/view/View;)Lzui/app/MessageDialog$Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    :goto_0
    iget-object v0, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0, v0}, Lzui/preference/DialogPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lzui/preference/DialogPreference;->c(Landroid/preference/PreferenceManager;)V

    iget-object v0, p0, Lzui/preference/DialogPreference;->a:Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lzui/preference/DialogPreference;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lzui/preference/DialogPreference;->d(Landroid/app/Dialog;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method
