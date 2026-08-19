.class Lcom/perm/kate/Settings$36;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/perm/kate/Settings$36;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 979
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/Settings$36;->this$0:Lcom/perm/kate/Settings;

    const-class v1, Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.perm.kate.gid"

    const-string v1, "26062647"

    .line 980
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    iget-object v0, p0, Lcom/perm/kate/Settings$36;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
