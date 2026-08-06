.class Lcom/perm/kate/Settings$30;
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
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/perm/kate/Settings$30;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 840
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/Settings$30;->this$0:Lcom/perm/kate/Settings;

    const-class v2, Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.gid"

    const-string v2, "26062647"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    iget-object v1, p0, Lcom/perm/kate/Settings$30;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Settings;->startActivity(Landroid/content/Intent;)V

    .line 843
    const/4 v1, 0x1

    return v1
.end method
