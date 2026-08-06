.class Lcom/perm/kate/Settings$38;
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
    .line 1098
    iput-object p1, p0, Lcom/perm/kate/Settings$38;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1101
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 1102
    .local v0, "enabled":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->display()V

    .line 1106
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1105
    :cond_0
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->cancel()V

    goto :goto_0
.end method
