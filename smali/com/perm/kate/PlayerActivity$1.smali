.class Lcom/perm/kate/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$1;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$1;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$000(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/AudioListAdapter;

    iget-object v3, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    .line 170
    .local v3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 172
    .local v1, "a":Lcom/perm/kate/api/Audio;
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$1;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v0, v0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget v8, Lcom/perm/kate/PlaybackService;->source:I

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "a":Lcom/perm/kate/api/Audio;
    .end local v3    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v9

    .line 174
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
