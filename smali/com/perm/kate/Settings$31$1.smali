.class Lcom/perm/kate/Settings$31$1;
.super Ljava/lang/Thread;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$31;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$31;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$31;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/perm/kate/Settings$31$1;->this$1:Lcom/perm/kate/Settings$31;

    iput-object p2, p0, Lcom/perm/kate/Settings$31$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Kate.Settings"

    const-string v1, "clearDataCache start"

    .line 891
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->clearCache()V

    const-string v1, "clearDataCache complete"

    .line 893
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 895
    invoke-static {v0, v1}, Lcom/perm/kate/FriendsFragment;->setLastRefreshedDate(J)V

    .line 897
    iget-object v0, p0, Lcom/perm/kate/Settings$31$1;->this$1:Lcom/perm/kate/Settings$31;

    iget-object v0, v0, Lcom/perm/kate/Settings$31;->this$0:Lcom/perm/kate/Settings;

    new-instance v1, Lcom/perm/kate/Settings$31$1$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/Settings$31$1$1;-><init>(Lcom/perm/kate/Settings$31$1;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
