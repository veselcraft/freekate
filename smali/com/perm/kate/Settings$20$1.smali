.class Lcom/perm/kate/Settings$20$1;
.super Ljava/lang/Thread;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$20;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$20;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$20;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/perm/kate/Settings$20$1;->this$1:Lcom/perm/kate/Settings$20;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearFileCache()V

    .line 621
    const-string v0, "Kate.Settings"

    const-string v1, "clearFileCache complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method
