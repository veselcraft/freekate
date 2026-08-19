.class Lcom/perm/kate/PodcastsActivity$6;
.super Ljava/lang/Object;
.source "PodcastsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PodcastsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PodcastsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$900(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 154
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/PodcastsActivity;->access$1002(Lcom/perm/kate/PodcastsActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 156
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p2, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p2}, Lcom/perm/kate/PodcastsActivity;->access$1000(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/api/Audio;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perm/kate/db/DataHelper;->createAudio(Lcom/perm/kate/api/Audio;)J

    .line 157
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$1200(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/AudioClickHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$6;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$300(Lcom/perm/kate/PodcastsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/PodcastsActivity;->access$1100(Lcom/perm/kate/PodcastsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    sget v3, Lcom/perm/kate/PlaybackService;->source:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/AudioClickHelper;->createPodcastMenu(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
