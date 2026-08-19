.class Lcom/perm/kate/AttachmentsHelper$4;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$4;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1137
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$4;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    const v1, 0x7f090008

    .line 1138
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f09000b

    .line 1139
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x7f090016

    .line 1140
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1142
    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$4;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v3, v0}, Lcom/perm/kate/AttachmentsHelper;->access$000(Lcom/perm/kate/AttachmentsHelper;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    invoke-static {v1, v2, p1, v0}, Lcom/perm/utils/AdEvents;->reportAttachedLinkClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_0
    invoke-static {v1, v2, p1, v0}, Lcom/perm/utils/AdEvents;->reportSnippetClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
