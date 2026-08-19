.class Lcom/perm/kate/VideoMenu$5;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$target_id:J

.field final synthetic val$vid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;J)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    iput-object p2, p0, Lcom/perm/kate/VideoMenu$5;->val$vid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/VideoMenu$5;->val$oid:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/perm/kate/VideoMenu$5;->val$target_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 275
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$5;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p2, p0, Lcom/perm/kate/VideoMenu$5;->val$vid:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/VideoMenu$5;->val$oid:Ljava/lang/Long;

    iget-wide v1, p0, Lcom/perm/kate/VideoMenu$5;->val$target_id:J

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/perm/kate/VideoMenu;->DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method
