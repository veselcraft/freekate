.class Lcom/perm/kate/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->showSearchTypeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$force_search:Z

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$5;->val$menus:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/perm/kate/SearchActivity$5;->val$force_search:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 356
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    .line 379
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 376
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 367
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 361
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    goto :goto_0

    .line 358
    :pswitch_6
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    sget-object p2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchActivity;->access$202(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/SearchActivity$SearchType;)Lcom/perm/kate/SearchActivity$SearchType;

    .line 382
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$4300(Lcom/perm/kate/SearchActivity;)V

    .line 383
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$4400(Lcom/perm/kate/SearchActivity;)V

    .line 384
    iget-boolean p1, p0, Lcom/perm/kate/SearchActivity$5;->val$force_search:Z

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$5;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$000(Lcom/perm/kate/SearchActivity;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
