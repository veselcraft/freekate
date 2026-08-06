.class Lcom/perm/kate/Settings$6;
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
    .line 392
    iput-object p1, p0, Lcom/perm/kate/Settings$6;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 396
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 397
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/perm/kate/Settings$6;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/UpdateService;->scheduleForced(Landroid/content/Context;)V

    .line 401
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/Settings$6;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/UpdateService;->cancel(Landroid/content/Context;)V

    goto :goto_0
.end method
