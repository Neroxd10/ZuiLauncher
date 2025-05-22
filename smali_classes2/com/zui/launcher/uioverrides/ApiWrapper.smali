.class public Lcom/zui/launcher/uioverrides/ApiWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TASKBAR_DRAWN_IN_PROCESS:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/zui/launcher/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    :cond_0
    return-object p0
.end method

.method public static isInternalDisplay(Landroid/view/Display;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
