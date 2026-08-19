.class Lcom/perm/kate/Settings$10;
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

    .line 473
    iput-object p1, p0, Lcom/perm/kate/Settings$10;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 477
    check-cast p2, Ljava/lang/Boolean;

    .line 478
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/perm/kate/Settings$10;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/UpdateService;->scheduleForced(Landroid/content/Context;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Settings$10;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/UpdateService;->cancel(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
