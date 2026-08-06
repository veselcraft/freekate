.class Lcom/perm/kate/AttachmentsHelper$AudioClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioClickListener"
.end annotation


# instance fields
.field audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->audios:Ljava/util/ArrayList;

    .line 1173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 1177
    .local v0, "attached_audio":Lcom/perm/kate/api/Audio;
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->audios:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget v3, v3, Lcom/perm/kate/AttachmentsHelper;->source:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/AudioClickHelper;->click(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;I)V

    .line 1178
    return-void
.end method
