.class Lcom/perm/kate/Settings$9;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 428
    iput-object p1, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    iget-object v0, v0, Lcom/perm/kate/Settings;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    iget-object v1, v1, Lcom/perm/kate/Settings;->longPollRunnavle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    iget-object v0, v0, Lcom/perm/kate/Settings;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/Settings$9;->this$0:Lcom/perm/kate/Settings;

    iget-object v1, v1, Lcom/perm/kate/Settings;->longPollRunnavle:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    const/4 v0, 0x1

    return v0
.end method
