.class Lcom/perm/kate/Settings$56;
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
    .line 1380
    iput-object p1, p0, Lcom/perm/kate/Settings$56;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/perm/kate/Settings$56;->this$0:Lcom/perm/kate/Settings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/Settings$56;->this$0:Lcom/perm/kate/Settings;

    const-class v3, Lcom/perm/kate/DashConfigActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1384
    const/4 v0, 0x1

    return v0
.end method
