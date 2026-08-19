.class Lcom/perm/kate/KApplication$3;
.super Ljava/lang/Thread;
.source "KApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/KApplication;->removeOldAccountIfExists(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/perm/kate/KApplication$3;->val$s:Lcom/perm/kate/session/Session;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/perm/kate/KApplication$3;->val$s:Lcom/perm/kate/session/Session;

    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/perm/kate/session/Session;->unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
