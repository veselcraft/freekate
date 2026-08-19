.class Lcom/perm/kate/Settings$52;
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

    .line 1391
    iput-object p1, p0, Lcom/perm/kate/Settings$52;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 1394
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1395
    iget-object p1, p0, Lcom/perm/kate/Settings$52;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$2100(Lcom/perm/kate/Settings;)V

    goto :goto_0

    .line 1397
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Settings$52;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$2200(Lcom/perm/kate/Settings;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
