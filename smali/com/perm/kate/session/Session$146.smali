.class Lcom/perm/kate/session/Session$146;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$genre_id:Ljava/lang/Integer;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;II)V
    .locals 0

    .line 1635
    iput-object p1, p0, Lcom/perm/kate/session/Session$146;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$146;->val$genre_id:Ljava/lang/Integer;

    iput p5, p0, Lcom/perm/kate/session/Session$146;->val$count:I

    iput p6, p0, Lcom/perm/kate/session/Session$146;->val$offset:I

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1638
    iget-object v0, p0, Lcom/perm/kate/session/Session$146;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$146;->val$genre_id:Ljava/lang/Integer;

    iget v2, p0, Lcom/perm/kate/session/Session$146;->val$count:I

    iget v3, p0, Lcom/perm/kate/session/Session$146;->val$offset:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->getAudioPopular(Ljava/lang/Integer;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
