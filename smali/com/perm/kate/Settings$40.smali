.class Lcom/perm/kate/Settings$40;
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

    .line 1016
    iput-object p1, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 1019
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1020
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    const-class v1, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1021
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v0

    const-string v1, "com.perm.kate.default_color"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.perm.kate.is_led"

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    const/16 v2, 0x7d3

    invoke-virtual {v0, p1, v2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method
