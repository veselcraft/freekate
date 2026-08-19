.class Lcom/perm/kate/Settings$13;
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

    .line 509
    iput-object p1, p0, Lcom/perm/kate/Settings$13;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 512
    iget-object p1, p0, Lcom/perm/kate/Settings$13;->this$0:Lcom/perm/kate/Settings;

    iget-object p2, p1, Lcom/perm/kate/Settings;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/Settings;->longPollRunnavle:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    iget-object p1, p0, Lcom/perm/kate/Settings$13;->this$0:Lcom/perm/kate/Settings;

    iget-object p2, p1, Lcom/perm/kate/Settings;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/Settings;->longPollRunnavle:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
