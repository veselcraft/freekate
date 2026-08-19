.class Lcom/perm/kate/CommentsActivity$3;
.super Lcom/perm/kate/data/NotifyObject$EventsListener;
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

    .line 174
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/data/NotifyObject$EventsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)V

    return-void
.end method
