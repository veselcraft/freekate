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

    .line 1140
    iput-object p1, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1144
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->stickersDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1146
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    return-void

    .line 1148
    :cond_1
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1149
    new-instance v5, Lcom/perm/kate/MainActivity$13$1;

    iget-object v1, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {v5, p0, v1, v0}, Lcom/perm/kate/MainActivity$13$1;-><init>(Lcom/perm/kate/MainActivity$13;Landroid/app/Activity;Ljava/lang/Integer;)V

    .line 1158
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/perm/kate/MainActivity$13;->this$0:Lcom/perm/kate/MainActivity;

    const-string v2, "active"

    const-string v3, "stickers"

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
