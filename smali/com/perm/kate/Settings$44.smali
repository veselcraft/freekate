.class Lcom/perm/kate/Settings$44;
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


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1262
    check-cast p2, Ljava/lang/Boolean;

    .line 1263
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1264
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->display()V

    goto :goto_0

    .line 1266
    :cond_0
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->cancel()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
