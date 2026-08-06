.class public Lcom/perm/kate/api/CommentList;
.super Ljava/lang/Object;
.source "CommentList.java"


# instance fields
.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    return-void
.end method
