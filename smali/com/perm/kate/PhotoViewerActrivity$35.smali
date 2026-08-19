.class Lcom/perm/kate/PhotoViewerActrivity$35;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0

    .line 1658
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1661
    check-cast p1, Ljava/lang/Long;

    .line 1662
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4100(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/Long;)V

    return-void
.end method
