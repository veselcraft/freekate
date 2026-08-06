.class Lcom/perm/kate/MainActivity$13$1;
.super Lcom/perm/kate/session/Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MainActivity$13;

.field final synthetic val$account_id:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity$13;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MainActivity$13;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/perm/kate/MainActivity$13$1;->this$1:Lcom/perm/kate/MainActivity$13;

    iput-object p3, p0, Lcom/perm/kate/MainActivity$13$1;->val$account_id:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1111
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 1112
    .local v0, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    invoke-static {v0}, Lcom/perm/kate/smile/StickerConfig;->moveSmilesToTop(Ljava/util/ArrayList;)V

    .line 1114
    iget-object v1, p0, Lcom/perm/kate/MainActivity$13$1;->val$account_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 1115
    return-void
.end method
