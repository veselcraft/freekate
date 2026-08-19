.class Lcom/perm/kate/WallMessageActivity$6;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 477
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 478
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object p1, p1, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/perm/utils/AdEvents;->reportSignerClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
