.class Lcom/perm/kate/Settings$24;
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
    .line 735
    iput-object p1, p0, Lcom/perm/kate/Settings$24;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 738
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/Settings$24;->this$0:Lcom/perm/kate/Settings;

    const-class v2, Lcom/perm/kate/BlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "change_block_password"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    iget-object v1, p0, Lcom/perm/kate/Settings$24;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Settings;->startActivity(Landroid/content/Intent;)V

    .line 741
    return v3
.end method
