.class Lcom/perm/kate/smile/StickerAdapter$1;
.super Ljava/lang/Object;
.source "StickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/StickerAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/StickerAdapter;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/perm/kate/RecentStickers;->add(I)V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    iget-object v0, v0, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter$1;->this$0:Lcom/perm/kate/smile/StickerAdapter;

    iget-object v0, v0, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0, p1}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->stickerSelected(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
