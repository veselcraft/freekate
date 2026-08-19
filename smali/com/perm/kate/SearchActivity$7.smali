.class Lcom/perm/kate/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 428
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$4600(Lcom/perm/kate/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 429
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "audios"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 432
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 434
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, p1, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$4500(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    :goto_0
    return-void
.end method
