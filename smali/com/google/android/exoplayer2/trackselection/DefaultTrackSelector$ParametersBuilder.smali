.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# instance fields
.field private allowAudioMixedChannelCountAdaptiveness:Z

.field private allowAudioMixedMimeTypeAdaptiveness:Z

.field private allowAudioMixedSampleRateAdaptiveness:Z

.field private allowMultipleAdaptiveSelections:Z

.field private allowVideoMixedMimeTypeAdaptiveness:Z

.field private allowVideoNonSeamlessAdaptiveness:Z

.field private exceedAudioConstraintsIfNecessary:Z

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private forceHighestSupportedBitrate:Z

.field private forceLowestBitrate:Z

.field private maxAudioBitrate:I

.field private maxAudioChannelCount:I

.field private maxVideoBitrate:I

.field private maxVideoFrameRate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private minVideoBitrate:I

.field private minVideoFrameRate:I

.field private minVideoHeight:I

.field private minVideoWidth:I

.field private preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

.field private preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;

.field private tunnelingEnabled:Z

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 215
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setInitialValuesWithoutContext()V

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 217
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setInitialValuesWithoutContext()V

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    return-void
.end method

.method private setInitialValuesWithoutContext()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "preferredVideoMimeTypes",
            "preferredAudioMimeTypes"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 875
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    .line 876
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    .line 877
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    .line 878
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    const/4 v1, 0x1

    .line 879
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v2, 0x0

    .line 880
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 881
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 882
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 883
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 884
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    .line 885
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 887
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    .line 888
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    .line 889
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 890
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 891
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 892
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 893
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 895
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    .line 896
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    .line 897
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 898
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    .line 899
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 39

    move-object/from16 v0, p0

    .line 830
    new-instance v37, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v37

    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->minVideoWidth:I

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->minVideoHeight:I

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->minVideoFrameRate:I

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->minVideoBitrate:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    move/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    move/from16 v28, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    move/from16 v31, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    move/from16 v34, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move-object/from16 v36, v1

    move-object/from16 v1, v38

    invoke-direct/range {v1 .. v36}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIIIIIZZZIIZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IIIZZZZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IZIZZZZZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v37
.end method

.method public bridge synthetic build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 606
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 448
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 449
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 450
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 422
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 423
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method
