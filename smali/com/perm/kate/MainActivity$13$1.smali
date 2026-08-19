.class Lcom/perm/kate/MainActivity$13$1;
.super Lcom/perm/kate/session/Callback;
.source "MainActivity.java"


# instance fields
.field final synthetic val$account_id:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity$13;Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 0

    .line 1149
    iput-object p3, p0, Lcom/perm/kate/MainActivity$13$1;->val$account_id:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1152
    check-cast p1, Ljava/util/ArrayList;

    .line 1153
    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->moveSmilesToTop(Ljava/util/ArrayList;)V

    .line 1155
    iget-object v0, p0, Lcom/perm/kate/MainActivity$13$1;->val$account_id:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    return-void
.end method
