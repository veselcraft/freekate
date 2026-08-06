.class Lcom/perm/kate/Settings$40;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$1800(Lcom/perm/kate/Settings;)V

    .line 1130
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 1131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1132
    invoke-static {}, Lcom/perm/utils/TaskDescriptionWrapper;->resetTaskDescription()V

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Settings$40;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$500(Lcom/perm/kate/Settings;)V

    .line 1134
    return-void
.end method
