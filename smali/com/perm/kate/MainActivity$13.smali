.class Lcom/perm/kate/MainActivity$13;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->refreshStickers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1103
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->stickersDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_0

    .line 1107
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1108
    .local v6, "account_id":Ljava/lang/Integer;
    new-instance v4, Lcom/perm/kate/MainActivity$13$1;

    iget-object v0, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {v4, p0, v0, v6}, Lcom/perm/kate/MainActivity$13$1;-><init>(Lcom/perm/kate/MainActivity$13;Landroid/app/Activity;Ljava/lang/Integer;)V

    .line 1117
    .local v4, "cb":Lcom/perm/kate/session/Callback;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v1, "active"

    const-string v2, "stickers"

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
