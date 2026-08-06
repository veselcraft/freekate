.class public Lcom/perm/kate/ReleaseNotes;
.super Ljava/lang/Object;
.source "ReleaseNotes.java"


# direct methods
.method public static display(Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "have_session"    # Z

    .prologue
    const/4 v3, -0x1

    .line 21
    if-nez p1, :cond_1

    .line 22
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "release_notes_version"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, "previous_version":I
    if-ne v1, v3, :cond_2

    .line 31
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_2
    const/16 v2, 0xb6

    if-eq v2, v1, :cond_0

    .line 38
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->showDialog(Landroid/app/Activity;)V

    .line 39
    invoke-static {p0}, Lcom/perm/kate/ReleaseNotes;->savePreviousVersion(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static savePreviousVersion(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "release_notes_version"

    const/16 v3, 0xb6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method private static showDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703ac

    .line 44
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703ab

    .line 45
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 49
    return-void
.end method
