.class Lcom/perm/kate/Settings$16;
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
    .line 540
    iput-object p1, p0, Lcom/perm/kate/Settings$16;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 544
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 545
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/perm/kate/Settings$16;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/BirthdayService;->scheduleForced(Landroid/content/Context;)V

    .line 548
    iget-object v1, p0, Lcom/perm/kate/Settings$16;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/BirthdayService;->startService(Landroid/content/Context;)V

    .line 552
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/Settings$16;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/BirthdayService;->cancel(Landroid/content/Context;)V

    goto :goto_0
.end method
