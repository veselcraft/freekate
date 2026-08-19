.class Lcom/perm/kate/PodcastsActivity$3;
.super Ljava/lang/Object;
.source "PodcastsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PodcastsActivity;->displayDataInUiThread()V
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

    .line 88
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$3;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$3;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v0}, Lcom/perm/kate/PodcastsActivity;->access$600(Lcom/perm/kate/PodcastsActivity;)V

    return-void
.end method
