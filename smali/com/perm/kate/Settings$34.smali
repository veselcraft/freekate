.class Lcom/perm/kate/Settings$34;
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
    .line 877
    iput-object p1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 881
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    const-class v2, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 882
    const-string v1, "com.perm.kate.default_color"

    iget-object v2, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v2}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    const-string v1, "com.perm.kate.is_led"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 884
    iget-object v1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 885
    return v3
.end method
