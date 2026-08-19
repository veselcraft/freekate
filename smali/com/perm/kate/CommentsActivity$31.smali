.class Lcom/perm/kate/CommentsActivity$31;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$31;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$31;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$2800(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    .line 1325
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$31;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$3600(Lcom/perm/kate/CommentsActivity;)V

    return-void
.end method
