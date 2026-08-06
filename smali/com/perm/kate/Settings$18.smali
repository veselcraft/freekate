.class Lcom/perm/kate/Settings$18;
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
    .line 568
    iput-object p1, p0, Lcom/perm/kate/Settings$18;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 572
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 573
    .local v1, "enabled":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, p0, Lcom/perm/kate/Settings$18;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    .line 577
    :goto_0
    const/4 v3, 0x1

    .line 581
    .end local v1    # "enabled":Ljava/lang/Boolean;
    :goto_1
    return v3

    .line 576
    .restart local v1    # "enabled":Ljava/lang/Boolean;
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/Settings$18;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/kate/Settings;->access$800(Lcom/perm/kate/Settings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    .end local v1    # "enabled":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 579
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 580
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 581
    const/4 v3, 0x0

    goto :goto_1
.end method
