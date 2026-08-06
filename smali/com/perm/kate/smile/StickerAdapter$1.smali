.class Lcom/perm/kate/smile/StickerAdapter$1;
.super Ljava/lang/Object;
.source "StickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/smile/StickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/StickerAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/StickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/smile/StickerAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/perm/kate/RecentStickers;->add(I)V

    .line 80
    iget-object v1, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    iget-object v1, v1, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    iget-object v1, v1, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v1, v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->stickerSelected(Ljava/lang/Integer;)V

    .line 82
    :cond_0
    return-void
.end method
