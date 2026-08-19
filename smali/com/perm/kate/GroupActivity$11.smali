.class Lcom/perm/kate/GroupActivity$11;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$11;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 568
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$11;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    return-void
.end method
