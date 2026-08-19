.class public abstract Lcom/perm/kate/ReleaseNotes;
.super Ljava/lang/Object;
.source "ReleaseNotes.java"


# direct methods
.method public static display(Landroid/app/Activity;Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 22
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "release_notes_version"

    const/4 v1, -0x1

    .line 27
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 31
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    return-void

    :cond_1
    const/16 v0, 0xe8

    if-ne v0, p1, :cond_2

    return-void

    .line 38
    :cond_2
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->showDialog(Landroid/app/Activity;)V

    .line 39
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    return-void
.end method

.method private static savePreviousVersion(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "release_notes_version"

    const/16 v1, 0xe8

    .line 54
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static showDialog(Landroid/app/Activity;)V
    .locals 2

    .line 43
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f042a

    .line 44
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0429

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0398

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
